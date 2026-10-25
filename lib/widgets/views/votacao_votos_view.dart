import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão em Cascata com o Voto de Cada Parlamentar em Determinada Votação
class VotacaoVotosView extends StatefulWidget {
  final String votacaoId;
  final String votacaoTitulo;

  const VotacaoVotosView({
    super.key,
    required this.votacaoId,
    required this.votacaoTitulo,
  });

  @override
  State<VotacaoVotosView> createState() => _VotacaoVotosViewState();
}

class _VotacaoVotosViewState extends State<VotacaoVotosView> {
  late Future<List<Votos>> _futureVotos;
  String _filtroTexto = '';

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futureVotos = appState.getVotacaoVotos(widget.votacaoId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Votos>>(
      future: _futureVotos,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Carregando registro nominal de votos...'),
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
                  const Text('Erro ao carregar votos da votação.'),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        final appState =
                            Provider.of<AppState>(context, listen: false);
                        _futureVotos =
                            appState.getVotacaoVotos(widget.votacaoId);
                      });
                    },
                    child: const Text('Recarregar'),
                  ),
                ],
              ),
            ),
          );
        }

        final todosVotos = snapshot.data ?? [];

        if (todosVotos.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.how_to_vote_outlined,
                      size: 48, color: Colors.grey.shade400),
                  const SizedBox(height: 12),
                  const Text(
                    'Esta votação foi simbólica ou os votos individuais não estão disponíveis.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }

        // Estatísticas de Votos
        int simCount = 0;
        int naoCount = 0;
        int abstencaoCount = 0;
        int outrosCount = 0;

        for (final v in todosVotos) {
          final t = (v.tipoVoto ?? '').toLowerCase();
          if (t == 'sim') {
            simCount++;
          } else if (t == 'não' || t == 'nao') {
            naoCount++;
          } else if (t.contains('absten')) {
            abstencaoCount++;
          } else {
            outrosCount++;
          }
        }

        // Filtra por texto se usuário digitar
        final votosFiltrados = todosVotos.where((v) {
          if (_filtroTexto.isEmpty) return true;
          final query = _filtroTexto.toLowerCase();
          final nome = v.deputado?.nome?.toLowerCase() ?? '';
          final partido = v.deputado?.siglaPartido?.toLowerCase() ?? '';
          final uf = v.deputado?.siglaUf?.toLowerCase() ?? '';
          return nome.contains(query) ||
              partido.contains(query) ||
              uf.contains(query);
        }).toList();

        return Column(
          children: [
            // Placar de Votos
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: Colors.grey.shade50,
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildScoreChip('Sim', simCount, Colors.green),
                      const SizedBox(width: 8),
                      _buildScoreChip('Não', naoCount, Colors.red),
                      const SizedBox(width: 8),
                      _buildScoreChip('Abstenções', abstencaoCount, Colors.amber.shade800),
                      if (outrosCount > 0) ...[
                        const SizedBox(width: 8),
                        _buildScoreChip('Outros', outrosCount, Colors.blueGrey),
                      ],
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Campo de busca interno na lista de votos
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Filtrar por parlamentar, partido ou UF...',
                      prefixIcon: const Icon(Icons.search, size: 18),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        _filtroTexto = val;
                      });
                    },
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            // Lista de Votos
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: votosFiltrados.length,
                itemBuilder: (context, index) {
                  final item = votosFiltrados[index];
                  final dep = item.deputado;
                  final votoStr = item.tipoVoto ?? 'Indefinido';
                  final votoCor = _corVoto(votoStr);

                  return Card(
                    margin: const EdgeInsets.only(bottom: 6),
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.grey.shade200,
                            backgroundImage: dep?.urlFoto != null &&
                                    dep!.urlFoto!.isNotEmpty
                                ? NetworkImage(dep.urlFoto!)
                                : null,
                            child: dep?.urlFoto == null
                                ? const Icon(Icons.person,
                                    size: 18, color: Colors.grey)
                                : null,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dep?.nome ?? 'Parlamentar',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '${dep?.siglaPartido ?? "S/P"} - ${dep?.siglaUf ?? "BR"}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: votoCor.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: votoCor.withValues(alpha: 0.3)),
                            ),
                            child: Text(
                              votoStr.toUpperCase(),
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: votoCor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildScoreChip(String label, int count, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withValues(alpha: 0.3)),
        ),
        child: Column(
          children: [
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _corVoto(String voto) {
    final v = voto.toLowerCase();
    if (v == 'sim') return Colors.green.shade700;
    if (v == 'não' || v == 'nao') return Colors.red.shade700;
    if (v.contains('absten')) return Colors.amber.shade800;
    return Colors.blueGrey;
  }
}
