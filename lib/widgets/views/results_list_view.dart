import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../models/filter_model.dart';
import '../../state/app_state.dart';
import '../parlamentar_avatar.dart';

/// Exibição da lista principal de resultados (Deputados, Eventos ou Votações)
class ResultsListView extends StatelessWidget {
  const ResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    if (appState.isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Buscando dados na API da Câmara...',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey.shade600,
                  ),
            ),
          ],
        ),
      );
    }

    if (appState.errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline_rounded,
                  size: 56, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 12),
              Text(
                'Falha ao carregar dados',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                appState.errorMessage!,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => appState.applyFilters(),
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Tentar Novamente'),
              ),
            ],
          ),
        ),
      );
    }

    switch (appState.selectedCategory) {
      case RadarCategory.deputados:
        return _buildDeputadosList(context, appState);
      case RadarCategory.eventos:
        return _buildEventosList(context, appState);
      case RadarCategory.votacoes:
        return _buildVotacoesList(context, appState);
    }
  }

  // ==========================================
  // LISTA DE DEPUTADOS
  // ==========================================
  Widget _buildDeputadosList(BuildContext context, AppState appState) {
    final list = appState.deputados;
    if (list.isEmpty) {
      return _buildEmptyState(
        context,
        icon: Icons.person_off_rounded,
        title: 'Nenhum deputado encontrado',
        subtitle:
            'Tente ajustar a UF selecionada ou a palavra-chave da busca.',
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final dep = list[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => appState.openDeputado(dep),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ParlamentarAvatar(
                    urlFoto: dep.urlFoto,
                    radius: 28,
                    heroTag: 'dep_foto_${dep.id}',
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dep.nome ?? 'Sem nome',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withValues(alpha: 0.12),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                dep.siglaPartido ?? 'S/P',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.withValues(alpha: 0.12),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                dep.siglaUf ?? 'BR',
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (dep.email != null && dep.email!.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            dep.email!,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right_rounded, color: Colors.grey),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ==========================================
  // LISTA DE EVENTOS
  // ==========================================
  Widget _buildEventosList(BuildContext context, AppState appState) {
    final list = appState.eventos;
    if (list.isEmpty) {
      return _buildEmptyState(
        context,
        icon: Icons.event_busy_rounded,
        title: 'Nenhum evento encontrado',
        subtitle: 'Altere a data selecionada ou o filtro de texto para buscar.',
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final ev = list[index];
        final dataInicioStr = _formatDate(ev.dataHoraInicio);
        final situacao = ev.situacao ?? 'Agendado';

        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => appState.openEvento(ev),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.orange.shade200),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.calendar_today_rounded,
                                size: 12, color: Colors.orange.shade800),
                            const SizedBox(width: 4),
                            Text(
                              dataInicioStr,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: _situacaoColor(situacao).withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          situacao,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: _situacaoColor(situacao),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ev.descricaoTipo ?? ev.descricao ?? 'Evento da Câmara',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (ev.descricao != null && ev.descricaoTipo != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      ev.descricao!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  if (ev.localCamara?.nome != null) ...[
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.place_outlined,
                            size: 13, color: Colors.grey.shade600),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            ev.localCamara!.nome!,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey.shade600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ==========================================
  // LISTA DE VOTAÇÕES
  // ==========================================
  Widget _buildVotacoesList(BuildContext context, AppState appState) {
    final list = appState.votacoes;
    if (list.isEmpty) {
      return _buildEmptyState(
        context,
        icon: Icons.how_to_vote_outlined,
        title: 'Nenhuma votação encontrada',
        subtitle: 'Ajuste a data ou o filtro de texto para buscar votações.',
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final vot = list[index];
        final dataStr = _formatDate(vot.dataHoraRegistro ?? vot.data);
        final aprovacao = vot.aprovacao;
        final statusTexto = aprovacao == 1
            ? 'Aprovada'
            : (aprovacao == 0 ? 'Rejeitada' : 'Registrada');
        final statusCor = aprovacao == 1
            ? Colors.green.shade700
            : (aprovacao == 0 ? Colors.red.shade700 : Colors.blue.shade700);

        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => appState.openVotacao(vot),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.purple.shade200),
                        ),
                        child: Text(
                          vot.siglaOrgao ?? 'Plenário',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade900,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        dataStr,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: statusCor.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          statusTexto,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: statusCor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    vot.descricao ?? 'Votação sem descrição',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Ver Detalhes e Votos',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.arrow_forward_rounded,
                          size: 14,
                          color: Theme.of(context).colorScheme.primary),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ==========================================
  // HELPERS
  // ==========================================
  Widget _buildEmptyState(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 52, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800,
                  ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(String? raw) {
    if (raw == null || raw.isEmpty) return '--/--/----';
    try {
      final parsed = DateTime.parse(raw);
      return DateFormat('dd/MM/yyyy HH:mm').format(parsed);
    } catch (_) {
      return raw.split('T').first;
    }
  }

  Color _situacaoColor(String situacao) {
    final lower = situacao.toLowerCase();
    if (lower.contains('encerra') || lower.contains('conclu')) {
      return Colors.grey.shade700;
    }
    if (lower.contains('andamento') || lower.contains('inici')) {
      return Colors.green.shade700;
    }
    if (lower.contains('convoca') || lower.contains('agenda')) {
      return Colors.blue.shade700;
    }
    if (lower.contains('cancel')) {
      return Colors.red.shade700;
    }
    return Colors.amber.shade800;
  }
}
