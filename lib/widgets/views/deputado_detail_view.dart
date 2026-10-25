import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão de Detalhes de um Deputado
class DeputadoDetailView extends StatefulWidget {
  final Deputado deputado;

  const DeputadoDetailView({super.key, required this.deputado});

  @override
  State<DeputadoDetailView> createState() => _DeputadoDetailViewState();
}

class _DeputadoDetailViewState extends State<DeputadoDetailView> {
  late Future<DeputadoID?> _futureDetalhes;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futureDetalhes = appState.getDeputadoDetalhes(widget.deputado.id!);
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppState>();
    final dep = widget.deputado;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card de Cabeçalho com Foto e Dados Principais
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'dep_foto_${dep.id}',
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.shade200,
                      backgroundImage: dep.urlFoto != null && dep.urlFoto!.isNotEmpty
                          ? NetworkImage(dep.urlFoto!)
                          : null,
                      child: dep.urlFoto == null || dep.urlFoto!.isEmpty
                          ? const Icon(Icons.person, size: 40, color: Colors.grey)
                          : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dep.nome ?? 'Sem nome',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: [
                            Chip(
                              label: Text(
                                dep.siglaPartido ?? 'S/P',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              padding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withValues(alpha: 0.12),
                            ),
                            Chip(
                              label: Text(
                                'UF: ${dep.siglaUf ?? "BR"}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              padding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              backgroundColor: Colors.blueGrey.shade50,
                            ),
                          ],
                        ),
                        if (dep.email != null && dep.email!.isNotEmpty) ...[
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.email_outlined,
                                  size: 14, color: Colors.grey.shade600),
                              const SizedBox(width: 6),
                              Expanded(
                                child: SelectableText(
                                  dep.email!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Botões de Ação para Navegação em Cascata (Empilham no Breadcrumb)
          Text(
            'Informações Complementares',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
          ),
          const SizedBox(height: 8),

          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    appState.openDeputadoDespesas(
                      dep.id!,
                      dep.nome ?? 'Deputado',
                    );
                  },
                  icon: const Icon(Icons.receipt_long_rounded, color: Colors.green),
                  label: const Text(
                    'Ver Despesas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    appState.openDeputadoDiscursos(
                      dep.id!,
                      dep.nome ?? 'Deputado',
                    );
                  },
                  icon: const Icon(Icons.record_voice_over_rounded, color: Colors.indigo),
                  label: const Text(
                    'Ver Discursos',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // Detalhes Aprofundados (Carregamento assíncrono via API)
          FutureBuilder<DeputadoID?>(
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
                return Card(
                  color: Colors.red.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Não foi possível carregar detalhes biográficos adicionais.',
                      style: TextStyle(color: Colors.red.shade900, fontSize: 12),
                    ),
                  ),
                );
              }

              final detalhes = snapshot.data;
              if (detalhes == null) return const SizedBox.shrink();

              final status = detalhes.ultimoStatus;

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
                        'Ficha Parlamentar',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const Divider(height: 16),
                      if (detalhes.nomeCivil != null &&
                          detalhes.nomeCivil != dep.nome)
                        _buildInfoRow('Nome Civil', detalhes.nomeCivil!),
                      if (detalhes.dataNascimento != null)
                        _buildInfoRow('Nascimento', detalhes.dataNascimento!),
                      if (detalhes.municipioNascimento != null)
                        _buildInfoRow('Naturalidade',
                            '${detalhes.municipioNascimento} - ${detalhes.ufNascimento ?? ""}'),
                      if (detalhes.escolaridade != null)
                        _buildInfoRow('Escolaridade', detalhes.escolaridade!),
                      if (status?.situacao != null)
                        _buildInfoRow('Situação', status!.situacao!),
                      if (status?.gabinete?.sala != null)
                        _buildInfoRow('Gabinete',
                            'Sala ${status!.gabinete!.sala}, Prédio ${status.gabinete!.predio ?? "Principal"}'),
                      if (status?.gabinete?.telefone != null)
                        _buildInfoRow('Telefone', status!.gabinete!.telefone!),
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
