import 'package:api_camara/api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../state/app_state.dart';

/// Visão em Cascata das Despesas Recentes do Deputado
class DeputadoDespesasView extends StatefulWidget {
  final int deputadoId;
  final String deputadoNome;

  const DeputadoDespesasView({
    super.key,
    required this.deputadoId,
    required this.deputadoNome,
  });

  @override
  State<DeputadoDespesasView> createState() => _DeputadoDespesasViewState();
}

class _DeputadoDespesasViewState extends State<DeputadoDespesasView> {
  late Future<List<DeputadoDespesas>> _futureDespesas;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _futureDespesas = appState.getDeputadoDespesas(widget.deputadoId);
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

    return FutureBuilder<List<DeputadoDespesas>>(
      future: _futureDespesas,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Consultando prestação de contas na Câmara...'),
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
                  const Text('Erro ao carregar despesas do parlamentar.'),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        final appState =
                            Provider.of<AppState>(context, listen: false);
                        _futureDespesas =
                            appState.getDeputadoDespesas(widget.deputadoId);
                      });
                    },
                    child: const Text('Recarregar'),
                  ),
                ],
              ),
            ),
          );
        }

        final despesas = snapshot.data ?? [];

        if (despesas.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.receipt_long_outlined,
                      size: 48, color: Colors.grey.shade400),
                  const SizedBox(height: 12),
                  const Text(
                    'Nenhuma despesa recente registrada para este período.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        }

        // Calcula total das despesas listadas
        final total = despesas.fold<double>(
          0.0,
          (sum, item) => sum + (item.valorLiquido ?? item.valorDocumento ?? 0.0),
        );

        return Column(
          children: [
            // Banner com Resumo do Total
            Container(
              margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade800, Colors.teal.shade700],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total de Despesas Listadas',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        currencyFormat.format(total),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '${despesas.length} itens',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Lista de Despesas
            Expanded(
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                itemCount: despesas.length,
                itemBuilder: (context, index) {
                  final item = despesas[index];
                  final valor =
                      item.valorLiquido ?? item.valorDocumento ?? 0.0;
                  final dataStr = item.dataDocumento ??
                      (item.mes != null && item.ano != null
                          ? '${item.mes}/${item.ano}'
                          : '--/--');

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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  item.tipoDespesa ?? 'Despesa Geral',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                currencyFormat.format(valor),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.green.shade800,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          if (item.nomeFornecedor != null) ...[
                            Text(
                              'Fornecedor: ${item.nomeFornecedor}',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade700,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Data: $dataStr',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              if (item.urlDocumento != null &&
                                  item.urlDocumento!.isNotEmpty)
                                Text(
                                  'Nota Fiscal disponível',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
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
}
