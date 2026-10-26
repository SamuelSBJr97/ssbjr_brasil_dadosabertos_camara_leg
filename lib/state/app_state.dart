import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/filter_model.dart';
import '../services/camara_service.dart';
import '../widgets/views/deputado_despesas_view.dart';
import '../widgets/views/deputado_detail_view.dart';
import '../widgets/views/deputado_discursos_view.dart';
import '../widgets/views/evento_detail_view.dart';
import '../widgets/views/results_list_view.dart';
import '../widgets/views/votacao_detail_view.dart';
import '../widgets/views/votacao_votos_view.dart';
import 'panel_route.dart';

/// Gerenciador de Estado Global da Aplicação (Provider)
///
/// Responsabilidades:
/// 1. Armazenar e sincronizar os filtros ativos (UF, Data, Texto, Categoria).
/// 2. Controlar o estado de carregamento e erros da API.
/// 3. Gerenciar a Pilha de Navegação do Painel Dinâmico (Breadcrumb).
/// 4. Manter o cache em memória das consultas à API da Câmara dos Deputados.
class AppState extends ChangeNotifier {
  final CamaraService _service;

  AppState(this._service) {
    _initRootRoute();
    // Carrega dados iniciais ao abrir o app
    applyFilters();
  }

  // ==========================================
  // FILTROS
  // ==========================================
  String? _selectedUf;
  DateTime? _selectedDate;
  String _searchQuery = '';
  RadarCategory _selectedCategory = RadarCategory.deputados;

  String? get selectedUf => _selectedUf;
  DateTime? get selectedDate => _selectedDate;
  String get searchQuery => _searchQuery;
  RadarCategory get selectedCategory => _selectedCategory;

  // ==========================================
  // ESTADO DE CARREGAMENTO & ERROS
  // ==========================================
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // ==========================================
  // RESULTADOS BUSCADOS
  // ==========================================
  List<Deputado> _deputados = [];
  List<Eventos> _eventos = [];
  List<Votacao> _votacoes = [];

  List<Deputado> get deputados => _deputados;
  List<Eventos> get eventos => _eventos;
  List<Votacao> get votacoes => _votacoes;

  // ==========================================
  // CACHE EM MEMÓRIA
  // ==========================================
  final Map<int, DeputadoID> _cacheDeputados = {};
  final Map<int, List<DeputadoDespesas>> _cacheDespesas = {};
  final Map<int, List<DeputadoDiscurso>> _cacheDiscursos = {};
  final Map<int, EventosID> _cacheEventos = {};
  final Map<int, List<Pauta>> _cachePautas = {};
  final Map<String, VotacaoID> _cacheVotacoes = {};
  final Map<String, List<Votos>> _cacheVotos = {};

  // ==========================================
  // PILHA DE NAVEGAÇÃO DO PAINEL LATERAL
  // ==========================================
  final List<PanelRouteItem> _panelStack = [];

  List<PanelRouteItem> get panelStack => List.unmodifiable(_panelStack);

  PanelRouteItem get currentPanel => _panelStack.isNotEmpty
      ? _panelStack.last
      : _createRootRoute();

  void _initRootRoute() {
    _panelStack.clear();
    _panelStack.add(_createRootRoute());
  }

  PanelRouteItem _createRootRoute() {
    final ufLabel = _selectedUf ?? 'Brasil';
    final catLabel = _selectedCategory.label;
    return PanelRouteItem(
      title: '$ufLabel > $catLabel',
      widget: const ResultsListView(),
      icon: _selectedCategory.icon,
      keyId: 'root',
    );
  }

  /// Adiciona uma nova view ao topo da pilha e atualiza o Breadcrumb
  void pushPanel(PanelRouteItem item) {
    _panelStack.add(item);
    notifyListeners();
  }

  /// Remove o nível superior da pilha (Voltar 1 nível)
  void popPanel() {
    if (_panelStack.length > 1) {
      _panelStack.removeLast();
      notifyListeners();
    }
  }

  /// Volta diretamente para um nível intermediário do Breadcrumb
  void popToPanel(int index) {
    if (index >= 0 && index < _panelStack.length) {
      while (_panelStack.length > index + 1) {
        _panelStack.removeLast();
      }
      notifyListeners();
    }
  }

  /// Redefine a pilha para o nível raiz (lista geral)
  void resetPanelToRoot() {
    _initRootRoute();
    notifyListeners();
  }

  // ==========================================
  // AÇÕES DE MODIFICAÇÃO DE FILTROS
  // ==========================================

  /// Atualiza o Estado (UF), redefinindo a raiz do Breadcrumb e disparando a busca
  void selectUf(String? uf) {
    if (_selectedUf == uf) return;
    _selectedUf = uf;
    resetPanelToRoot();
    applyFilters();
  }

  /// Atualiza a data selecionada
  void selectDate(DateTime? date) {
    _selectedDate = date;
    notifyListeners();
  }

  /// Atualiza o texto de busca
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  /// Alterna entre Deputados, Eventos e Votações
  void selectCategory(RadarCategory category) {
    if (_selectedCategory == category) return;
    _selectedCategory = category;
    resetPanelToRoot();
    applyFilters();
  }

  // ==========================================
  // BUSCA DE DADOS (INTEGRAÇÃO COM API)
  // ==========================================

  /// Executa a busca na API aplicando os filtros atuais
  Future<void> applyFilters() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final dataStr = _selectedDate != null
          ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
          : null;

      switch (_selectedCategory) {
        case RadarCategory.deputados:
          _deputados = await _service.fetchDeputados(
            uf: _selectedUf,
            nome: _searchQuery,
            itens: 1000,
          );
          break;

        case RadarCategory.eventos:
          _eventos = await _service.fetchEventos(
            dataInicio: dataStr,
            dataFim: dataStr,
            itens: 1000,
          );
          if (_searchQuery.trim().isNotEmpty) {
            final q = _searchQuery.toLowerCase();
            _eventos = _eventos.where((e) {
              final d = (e.descricao ?? '').toLowerCase();
              final dt = (e.descricaoTipo ?? '').toLowerCase();
              return d.contains(q) || dt.contains(q);
            }).toList();
          }
          break;

        case RadarCategory.votacoes:
          _votacoes = await _service.fetchVotacoes(
            dataInicio: dataStr,
            dataFim: dataStr,
            itens: 1000,
          );
          if (_searchQuery.trim().isNotEmpty) {
            final q = _searchQuery.toLowerCase();
            _votacoes = _votacoes.where((v) {
              final d = (v.descricao ?? '').toLowerCase();
              return d.contains(q);
            }).toList();
          }
          break;
      }
    } catch (e) {
      _errorMessage = 'Não foi possível carregar os dados. Verifique a conexão com a API da Câmara.';
    } finally {
      _isLoading = false;
      // Garante que a raiz do Breadcrumb reflete a UF e Categoria atual
      if (_panelStack.isNotEmpty && _panelStack.first.keyId == 'root') {
        _panelStack[0] = _createRootRoute();
      }
      notifyListeners();
    }
  }

  // ==========================================
  // NAVEGAÇÃO EM CASCATA (PUSH DE TELAS NO PAINEL)
  // ==========================================

  /// Abre os detalhes de um Deputado
  void openDeputado(Deputado dep) {
    pushPanel(PanelRouteItem(
      title: dep.nome ?? 'Deputado',
      icon: Icons.person_rounded,
      widget: DeputadoDetailView(deputado: dep),
      keyId: 'dep_${dep.id}',
    ));
  }

  /// Abre as despesas do Deputado
  void openDeputadoDespesas(int depId, String depNome) {
    pushPanel(PanelRouteItem(
      title: 'Despesas',
      icon: Icons.receipt_long_rounded,
      widget: DeputadoDespesasView(
        deputadoId: depId,
        deputadoNome: depNome,
      ),
      keyId: 'despesas_$depId',
    ));
  }

  /// Abre os discursos do Deputado
  void openDeputadoDiscursos(int depId, String depNome) {
    pushPanel(PanelRouteItem(
      title: 'Discursos',
      icon: Icons.record_voice_over_rounded,
      widget: DeputadoDiscursosView(
        deputadoId: depId,
        deputadoNome: depNome,
      ),
      keyId: 'discursos_$depId',
    ));
  }

  /// Abre os detalhes de um Evento
  void openEvento(Eventos evento) {
    pushPanel(PanelRouteItem(
      title: evento.descricaoTipo ?? 'Evento',
      icon: Icons.event_rounded,
      widget: EventoDetailView(evento: evento),
      keyId: 'evento_${evento.id}',
    ));
  }

  /// Abre os detalhes de uma Votação
  void openVotacao(Votacao votacao) {
    pushPanel(PanelRouteItem(
      title: votacao.siglaOrgao != null
          ? 'Votação (${votacao.siglaOrgao})'
          : 'Votação',
      icon: Icons.how_to_vote_rounded,
      widget: VotacaoDetailView(votacao: votacao),
      keyId: 'votacao_${votacao.id}',
    ));
  }

  /// Abre os votos por parlamentar de uma Votação
  void openVotacaoVotos(String votacaoId, String votacaoTitulo) {
    pushPanel(PanelRouteItem(
      title: 'Votos Nominais',
      icon: Icons.people_outline_rounded,
      widget: VotacaoVotosView(
        votacaoId: votacaoId,
        votacaoTitulo: votacaoTitulo,
      ),
      keyId: 'votos_$votacaoId',
    ));
  }

  // ==========================================
  // MÉTODOS DE CONSULTA COM CACHE
  // ==========================================

  Future<DeputadoID?> getDeputadoDetalhes(int id) async {
    if (_cacheDeputados.containsKey(id)) {
      return _cacheDeputados[id];
    }
    final dados = await _service.fetchDeputadoDetalhes(id);
    if (dados != null) {
      _cacheDeputados[id] = dados;
    }
    return dados;
  }

  Future<List<DeputadoDespesas>> getDeputadoDespesas(int id) async {
    if (_cacheDespesas.containsKey(id)) {
      return _cacheDespesas[id]!;
    }
    final dados = await _service.fetchDeputadoDespesas(id);
    _cacheDespesas[id] = dados;
    return dados;
  }

  Future<List<DeputadoDiscurso>> getDeputadoDiscursos(int id) async {
    if (_cacheDiscursos.containsKey(id)) {
      return _cacheDiscursos[id]!;
    }
    final dados = await _service.fetchDeputadoDiscursos(id);
    _cacheDiscursos[id] = dados;
    return dados;
  }

  Future<EventosID?> getEventoDetalhes(int id) async {
    if (_cacheEventos.containsKey(id)) {
      return _cacheEventos[id];
    }
    final dados = await _service.fetchEventoDetalhes(id);
    if (dados != null) {
      _cacheEventos[id] = dados;
    }
    return dados;
  }

  Future<List<Pauta>> getEventoPauta(int id) async {
    if (_cachePautas.containsKey(id)) {
      return _cachePautas[id]!;
    }
    final dados = await _service.fetchEventoPauta(id);
    _cachePautas[id] = dados;
    return dados;
  }

  Future<VotacaoID?> getVotacaoDetalhes(String id) async {
    if (_cacheVotacoes.containsKey(id)) {
      return _cacheVotacoes[id];
    }
    final dados = await _service.fetchVotacaoDetalhes(id);
    if (dados != null) {
      _cacheVotacoes[id] = dados;
    }
    return dados;
  }

  Future<List<Votos>> getVotacaoVotos(String id) async {
    if (_cacheVotos.containsKey(id)) {
      return _cacheVotos[id]!;
    }
    final dados = await _service.fetchVotacaoVotos(id);
    _cacheVotos[id] = dados;
    return dados;
  }
}

