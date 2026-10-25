import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão em Cascata dos Discursos do Deputado
class DeputadoDiscursosView extends StatefulWidget {
  final int deputadoId;
  final String deputadoNome;

  const DeputadoDiscursosView({
    super.key,
    required this.deputadoId,
    required this.deputadoNome,
  });

  @override
  State<DeputadoDiscursosView> createState() => _DeputadoDiscursosViewState();
}

class _DeputadoDiscursosViewState extends State<DeputadoDiscursosView> {
  late Future<List<DeputadoDiscurso>> _futureDiscursos;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futureDiscursos = appState.getDeputadoDiscursos(widget.deputadoId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DeputadoDiscurso>>(
      future: _futureDiscursos,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Buscando discursos proferidos na Câmara...'),
              ],
            ),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 12),
                  const Text('Erro ao carregar discursos do parlamentar.'),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        final appState =
                            Provider.of<AppState>(context, listen: false);
                        _futureDiscursos =
                            appState.getDeputadoDiscursos(widget.deputadoId);
                      });
                    },
                    child: const Text('Recarregar'),
                  ),
                ],
              ),
            ),
          );
        }

        final discursos = snapshot.data ?? [];

        if (discursos.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.speaker_notes_off_outlined,
                      size: 48, color: Colors.grey.shade400),
                  const SizedBox(height: 12),
                  const Text(
                    'Nenhum discurso recente encontrado para este parlamentar.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: discursos.length,
          itemBuilder: (context, index) {
            final discurso = discursos[index];
            final dataStr = _formatDate(discurso.dataHoraInicio);

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade200),
              ),
              child: ExpansionTile(
                shape: const Border(),
                collapsedShape: const Border(),
                tilePadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.record_voice_over_rounded,
                      size: 20, color: Colors.indigo.shade700),
                ),
                title: Text(
                  discurso.tipoDiscurso ?? 'Pronunciamento',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text(
                      'Data: $dataStr',
                      style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                    ),
                    if (discurso.faseEvento?.titulo != null &&
                        discurso.faseEvento!.titulo!.isNotEmpty)
                      Text(
                        'Fase: ${discurso.faseEvento!.titulo}',
                        style: TextStyle(
                            fontSize: 11, color: Colors.grey.shade500),
                      ),
                  ],
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(height: 16),
                        if (discurso.keywords != null &&
                            discurso.keywords!.isNotEmpty) ...[
                          Text(
                            'Palavras-chave: ${discurso.keywords}',
                            style: TextStyle(
                              fontSize: 11,
                              fontStyle: FontStyle.italic,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                        Text(
                          'Sumário / Transcrição:',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        SelectableText(
                          discurso.sumario ??
                              discurso.transcricao ??
                              'Sem transcrição disponível para este pronunciamento.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
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
