import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão de Detalhes de um Evento Parlamentar e sua Pauta
class EventoDetailView extends StatefulWidget {
  final Eventos evento;

  const EventoDetailView({super.key, required this.evento});

  @override
  State<EventoDetailView> createState() => _EventoDetailViewState();
}

class _EventoDetailViewState extends State<EventoDetailView> {
  late Future<List<Pauta>> _futurePauta;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futurePauta = appState.getEventoPauta(widget.evento.id!);
  }

  @override
  Widget build(BuildContext context) {
    final ev = widget.evento;
    final dataInicio = _formatDate(ev.dataHoraInicio);
    final dataFim = _formatDate(ev.dataHoraFim);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card de Informações Gerais do Evento
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
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          ev.descricaoTipo ?? 'Reunião/Sessão',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange.shade900,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue.shade200),
                        ),
                        child: Text(
                          ev.situacao ?? 'Situação não informada',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    ev.descricao ?? 'Evento da Câmara dos Deputados',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const Divider(height: 20),
                  _buildMetaItem(Icons.access_time_rounded, 'Início: $dataInicio'
                      '${dataFim != "--/--/----" ? " | Término: $dataFim" : ""}'),
                  if (ev.localCamara?.nome != null) ...[
                    const SizedBox(height: 6),
                    _buildMetaItem(Icons.place_rounded,
                        '${ev.localCamara!.nome} (${ev.localCamara!.predio ?? "Prédio Principal"})'),
                  ],
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Pauta de Proposições
          Row(
            children: [
              Icon(Icons.list_alt_rounded,
                  size: 20, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                'Proposições em Pauta',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          FutureBuilder<List<Pauta>>(
            future: _futurePauta,
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
                return Card(
                  color: Colors.red.shade50,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Não foi possível carregar a lista de pauta do evento.',
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                );
              }

              final pautas = snapshot.data ?? [];

              if (pautas.isEmpty) {
                return Card(
                  color: Colors.grey.shade50,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Nenhuma proposição registrada na pauta deste evento até o momento.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ),
                );
              }

              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pautas.length,
                itemBuilder: (context, index) {
                  final pauta = pautas[index];
                  final ordem = pauta.ordem != null ? '#${pauta.ordem}' : '${index + 1}';

                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withValues(alpha: 0.12),
                                child: Text(
                                  ordem,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  pauta.titulo ??
                                      pauta.topico ??
                                      'Item de Pauta',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              if (pauta.situacaoItem != null)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    pauta.situacaoItem!,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (pauta.relator != null &&
                              pauta.relator!.nome != null) ...[
                            const SizedBox(height: 6),
                            Text(
                              'Relator: ${pauta.relator!.nome} (${pauta.relator!.siglaPartido ?? ""}/${pauta.relator!.siglaUf ?? ""})',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                          if (pauta.regime != null) ...[
                            const SizedBox(height: 2),
                            Text(
                              'Regime: ${pauta.regime}',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMetaItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.grey.shade600),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
          ),
        ),
      ],
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
