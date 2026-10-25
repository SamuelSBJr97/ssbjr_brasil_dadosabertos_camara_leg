import 'package:api_camara/api.dart';
import 'package:flutter/foundation.dart';

/// Serviço que abstrai as chamadas à API de Dados Abertos da Câmara dos Deputados
/// utilizando o client OpenAPI gerado em `packages/api_camara`.
class CamaraService {
  final ApiClient apiClient;
  late final DeputadosApi _deputadosApi;
  late final EventosApi _eventosApi;
  late final VotaesApi _votacoesApi;

  CamaraService({ApiClient? client})
      : apiClient = client ??
            ApiClient(basePath: 'https://dadosabertos.camara.leg.br/api/v2') {
    _deputadosApi = DeputadosApi(apiClient);
    _eventosApi = EventosApi(apiClient);
    _votacoesApi = VotaesApi(apiClient);
  }

  // ==========================================
  // DEPUTADOS
  // ==========================================

  /// Busca deputados com filtros opcionais de UF e Nome/Palavra-chave
  Future<List<Deputado>> fetchDeputados({
    String? uf,
    String? nome,
    int itens = 30,
  }) async {
    try {
      final List<String>? ufs = (uf != null && uf.isNotEmpty) ? [uf] : null;
      final queryNome = (nome != null && nome.trim().isNotEmpty) ? nome.trim() : null;

      final response = await _deputadosApi.obterDeputados(
        siglaUf: ufs,
        nome: queryNome,
        itens: itens,
        ordenarPor: 'nome',
        ordem: 'asc',
      );

      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar deputados: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém detalhes aprofundados de um Deputado específico (gabinete, escolaridade, etc.)
  Future<DeputadoID?> fetchDeputadoDetalhes(int id) async {
    try {
      final response = await _deputadosApi.obterDeputadoID1(id);
      return response?.dados;
    } catch (e, stack) {
      debugPrint('Erro ao buscar detalhes do deputado $id: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém a lista de despesas recentes do deputado
  Future<List<DeputadoDespesas>> fetchDeputadoDespesas(
    int id, {
    int itens = 30,
    int? ano,
  }) async {
    try {
      final anos = ano != null ? [ano.toString()] : null;
      final response = await _deputadosApi.getDeputadoDespesas(
        id,
        itens: itens,
        ano: anos,
        ordenarPor: 'dataDocumento',
        ordem: 'desc',
      );
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar despesas do deputado $id: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém a lista de discursos proferidos pelo deputado
  Future<List<DeputadoDiscurso>> fetchDeputadoDiscursos(
    int id, {
    int itens = 25,
  }) async {
    try {
      final response = await _deputadosApi.getDeputadoDiscursos1(
        id,
        itens: itens,
        ordenarPor: 'dataHoraInicio',
        ordem: 'desc',
      );
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar discursos do deputado $id: $e\n$stack');
      rethrow;
    }
  }

  // ==========================================
  // EVENTOS
  // ==========================================

  /// Busca eventos da Câmara (audiências, sessões, reuniões de comissões)
  Future<List<Eventos>> fetchEventos({
    String? dataInicio,
    String? dataFim,
    int itens = 30,
  }) async {
    try {
      final response = await _eventosApi.getEventos(
        dataInicio: dataInicio,
        dataFim: dataFim,
        itens: itens,
        ordenarPor: 'dataHoraInicio',
        ordem: 'desc',
      );
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar eventos: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém detalhes de um Evento por ID
  Future<EventosID?> fetchEventoDetalhes(int id) async {
    try {
      final response = await _eventosApi.getEventos1(id);
      return response?.dados;
    } catch (e, stack) {
      debugPrint('Erro ao buscar detalhes do evento $id: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém a pauta / proposições em discussão em determinado evento
  Future<List<Pauta>> fetchEventoPauta(int id) async {
    try {
      final response = await _eventosApi.getEventosPauta(id);
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar pauta do evento $id: $e\n$stack');
      rethrow;
    }
  }

  // ==========================================
  // VOTAÇÕES
  // ==========================================

  /// Busca votações realizadas na Câmara
  Future<List<Votacao>> fetchVotacoes({
    String? dataInicio,
    String? dataFim,
    int itens = 30,
  }) async {
    try {
      final response = await _votacoesApi.listar(
        dataInicio: dataInicio,
        dataFim: dataFim,
        itens: itens,
        ordenarPor: 'dataHoraRegistro',
        ordem: 'desc',
      );
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar votações: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém detalhes de uma Votação por ID
  Future<VotacaoID?> fetchVotacaoDetalhes(String id) async {
    try {
      final response = await _votacoesApi.getVotacaoID(id);
      return response?.dados;
    } catch (e, stack) {
      debugPrint('Erro ao buscar detalhes da votação $id: $e\n$stack');
      rethrow;
    }
  }

  /// Obtém o registro de votos de cada parlamentar em determinada votação
  Future<List<Votos>> fetchVotacaoVotos(String id) async {
    try {
      final response = await _votacoesApi.getVotacaoVotosPorId(id);
      return response?.dados ?? [];
    } catch (e, stack) {
      debugPrint('Erro ao buscar votos da votação $id: $e\n$stack');
      rethrow;
    }
  }
}

