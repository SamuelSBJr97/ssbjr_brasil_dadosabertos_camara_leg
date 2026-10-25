import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/filter_model.dart';
import '../state/app_state.dart';

/// Componente visual do Mapa do Brasil com divisão por estados (UFs)
///
/// Utiliza a biblioteca `countries_world_map`. Ao clicar em um estado,
/// atualiza o filtro de UF no estado da aplicação e engatilha a busca automática.
class BrazilMapWidget extends StatefulWidget {
  const BrazilMapWidget({super.key});

  @override
  State<BrazilMapWidget> createState() => _BrazilMapWidgetState();
}

class _BrazilMapWidgetState extends State<BrazilMapWidget> {
  String? _hoveredUf;

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final theme = Theme.of(context);
    final selectedUf = appState.selectedUf;

    // Constrói o mapa de cores para os estados
    final Map<String, Color?> mapColors = {};
    for (final uf in BrazilUfUtils.listaUfs) {
      final key = 'BR-$uf';
      if (uf == selectedUf) {
        // Estado selecionado ganha cor de destaque forte
        mapColors[key] = theme.colorScheme.primary;
      } else if (uf == _hoveredUf) {
        // Estado sob hover ganha cor intermediária
        mapColors[key] = theme.colorScheme.primary.withValues(alpha: 0.4);
      } else {
        // Cor padrão sutil e elegante
        mapColors[key] = Colors.blueGrey.shade100;
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Barra de status / legenda do Mapa
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Row(
              children: [
                Icon(
                  Icons.map_rounded,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mapa Interativo do Brasil',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Clique em um estado para filtrar os dados parlamentares',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                if (selectedUf != null)
                  ActionChip(
                    avatar: const Icon(Icons.close_rounded, size: 14),
                    label: Text(
                      'UF: $selectedUf (${BrazilUfUtils.nomeEstado(selectedUf)})',
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor:
                        theme.colorScheme.primary.withValues(alpha: 0.12),
                    onPressed: () => appState.selectUf(null),
                  )
                else
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Brasil (Nacional)',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const Divider(height: 1),

          // Área Interativa do Mapa
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InteractiveViewer(
                  minScale: 0.8,
                  maxScale: 4.0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SimpleMap(
                        instructions: SMapBrazil.instructions,
                        defaultColor: Colors.blueGrey.shade100,
                        colors: mapColors,
                        countryBorder: CountryBorder(
                          color: Colors.white,
                          width: 1.5,
                        ),
                        onHover: (id, name, isHovering) {
                          final uf = BrazilUfUtils.extrairUf(id);
                          if (isHovering && uf != null) {
                            if (_hoveredUf != uf) {
                              setState(() {
                                _hoveredUf = uf;
                              });
                            }
                          } else {
                            if (_hoveredUf != null) {
                              setState(() {
                                _hoveredUf = null;
                              });
                            }
                          }
                        },
                        callback: (id, name, tapDetails) {
                          final uf = BrazilUfUtils.extrairUf(id);
                          if (uf != null) {
                            if (appState.selectedUf == uf) {
                              // Clicar novamente no mesmo estado desmarca
                              appState.selectUf(null);
                            } else {
                              appState.selectUf(uf);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
