import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão de Detalhes de uma Votação
class VotacaoDetailView extends StatefulWidget {
  final Votacao votacao;

  const VotacaoDetailView({super.key, required this.votacao});

  @override
  State<VotacaoDetailView> createState() => _VotacaoDetailViewState();
}

class _VotacaoDetailViewState extends State<VotacaoDetailView> {
  late Future<VotacaoID?> _futureDetalhes;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futureDetalhes = appState.getVotacaoDetalhes(widget.votacao.id!);
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppState>();
    final vot = widget.votacao;
    final dataStr = _formatDate(vot.dataHoraRegistro ?? vot.data);
    final aprovacao = vot.aprovacao;
    final statusTexto = aprovacao == 1
        ? 'Aprovada'
        : (aprovacao == 0 ? 'Rejeitada' : 'Registrada');
    final statusCor = aprovacao == 1
        ? Colors.green.shade700
        : (aprovacao == 0 ? Colors.red.shade700 : Colors.blue.shade700);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card Principal com Resultado
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.purple.shade200),
                        ),
                        child: Text(
                          vot.siglaOrgao ?? 'Plenário da Câmara',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade900,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: statusCor.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          statusTexto,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: statusCor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Resumo da Deliberação',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    vot.descricao ?? 'Votação sem descrição registrada.',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const Divider(height: 20),
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded,
                          size: 14, color: Colors.grey.shade600),
                      const SizedBox(width: 6),
                      Text(
                        'Data de Registro: $dataStr',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Botão de Destaque: Ver como cada Parlamentar votou (Empilha no Breadcrumb)
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              appState.openVotacaoVotos(
                vot.id!,
                vot.siglaOrgao != null
                    ? 'Votos (${vot.siglaOrgao})'
                    : 'Votos dos Parlamentares',
              );
            },
            icon: const Icon(Icons.how_to_vote_rounded),
            label: const Text(
              'Ver Voto de Cada Parlamentar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),

          const SizedBox(height: 18),

          // Detalhes estendidos da votação
          FutureBuilder<VotacaoID?>(
            future: _futureDetalhes,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (snapshot.hasError) {
                return const SizedBox.shrink();
              }

              final detalhes = snapshot.data;
              if (detalhes == null) return const SizedBox.shrink();

              return Card(
                elevation: 0,
                color: Colors.grey.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informações Adicionais',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const Divider(height: 16),
                      if (detalhes.descUltimaAberturaVotacao != null)
                        _buildDetailRow('Abertura',
                            detalhes.descUltimaAberturaVotacao!),
                      if (detalhes.proposicoesAfetadas.isNotEmpty)
                        _buildDetailRow(
                            'Proposições',
                            detalhes.proposicoesAfetadas
                                .map((p) => p.siglaTipo ?? 'Prop.')
                                .join(', ')),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ],
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
}
