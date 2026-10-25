import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/filter_model.dart';
import '../state/app_state.dart';

/// Barra de Filtros Fixada no Topo do Aplicativo
///
/// Contém:
/// - Identidade Visual (Logo e Título do Radar da Câmara);
/// - Seletor de Categoria (Deputados, Eventos, Votações);
/// - Dropdown de seleção de UF (com 'Todas as UFs (Brasil)');
/// - Seletor de Data com showDatePicker e opção de limpar;
/// - Campo de busca por assunto/texto/palavra-chave;
/// - Botão 'Aplicar Filtros' para sincronização com a API.
class FilterBarWidget extends StatefulWidget {
  const FilterBarWidget({super.key});

  @override
  State<FilterBarWidget> createState() => _FilterBarWidgetState();
}

class _FilterBarWidgetState extends State<FilterBarWidget> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    final appState = Provider.of<AppState>(context, listen: false);
    _searchController = TextEditingController(text: appState.searchQuery);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final theme = Theme.of(context);
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 20 : 12,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Linha Superior: Logo + Título + Categoria (Desktop)
          Row(
            children: [
              // Identidade Visual do Radar da Câmara
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.radar_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Radar da Câmara',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                        letterSpacing: -0.5,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Painel de Transparência Parlamentar',
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

              // Abas de Categoria no Desktop
              if (isDesktop) ...[
                const SizedBox(width: 12),
                SegmentedButton<RadarCategory>(
                  segments: [
                    for (final cat in RadarCategory.values)
                      ButtonSegment(
                        value: cat,
                        label: Text(cat.label),
                        icon: Icon(cat.icon, size: 16),
                      ),
                  ],
                  selected: {appState.selectedCategory},
                  onSelectionChanged: (selected) {
                    if (selected.isNotEmpty) {
                      appState.selectCategory(selected.first);
                    }
                  },
                ),
              ],
            ],
          ),

          // Seletor de Categoria em Mobile
          if (!isDesktop) ...[
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: SegmentedButton<RadarCategory>(
                segments: [
                  for (final cat in RadarCategory.values)
                    ButtonSegment(
                      value: cat,
                      label: Text(
                        cat.label,
                        style: const TextStyle(fontSize: 11),
                      ),
                      icon: Icon(cat.icon, size: 14),
                    ),
                ],
                selected: {appState.selectedCategory},
                onSelectionChanged: (selected) {
                  if (selected.isNotEmpty) {
                    appState.selectCategory(selected.first);
                  }
                },
              ),
            ),
          ],

          const SizedBox(height: 12),

          // Linha Inferior de Filtros (UF, Data, Texto, Botão Aplicar)
          Wrap(
            spacing: 10,
            runSpacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // 1. DropdownButton de Estado (UF)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String?>(
                    value: appState.selectedUf,
                    isDense: true,
                    hint: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.location_on_outlined, size: 15, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('Brasil (Todos)', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    items: [
                      const DropdownMenuItem<String?>(
                        value: null,
                        child: Text('Brasil (Todas as UFs)',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                      for (final uf in BrazilUfUtils.listaUfs)
                        DropdownMenuItem<String?>(
                          value: uf,
                          child: Text(
                            '$uf - ${BrazilUfUtils.nomeEstado(uf)}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                    ],
                    onChanged: (novoUf) {
                      appState.selectUf(novoUf);
                    },
                  ),
                ),
              ),

              // 2. Seletor de Data (showDatePicker)
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  backgroundColor: appState.selectedDate != null
                      ? theme.colorScheme.primary.withValues(alpha: 0.08)
                      : Colors.grey.shade50,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: appState.selectedDate != null
                        ? theme.colorScheme.primary
                        : Colors.grey.shade300,
                  ),
                ),
                onPressed: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: appState.selectedDate ?? DateTime.now(),
                    firstDate: DateTime(2010),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                    locale: const Locale('pt', 'BR'),
                  );
                  if (picked != null) {
                    appState.selectDate(picked);
                  }
                },
                icon: Icon(
                  Icons.calendar_month_rounded,
                  size: 15,
                  color: appState.selectedDate != null
                      ? theme.colorScheme.primary
                      : Colors.grey.shade700,
                ),
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      appState.selectedDate != null
                          ? DateFormat('dd/MM/yyyy').format(appState.selectedDate!)
                          : 'Data',
                      style: TextStyle(
                        fontSize: 12,
                        color: appState.selectedDate != null
                            ? theme.colorScheme.primary
                            : Colors.grey.shade800,
                        fontWeight: appState.selectedDate != null
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    if (appState.selectedDate != null) ...[
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () => appState.selectDate(null),
                        child: const Icon(Icons.cancel, size: 14, color: Colors.grey),
                      ),
                    ],
                  ],
                ),
              ),

              // 3. Campo de Busca de Assunto / Palavra-chave (TextField)
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 150,
                  maxWidth: isDesktop ? 260 : 180,
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Assunto ou nome...',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                    prefixIcon: const Icon(Icons.search_rounded, size: 16),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear, size: 14),
                            onPressed: () {
                              _searchController.clear();
                              appState.setSearchQuery('');
                              appState.applyFilters();
                            },
                          )
                        : null,
                    isDense: true,
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: theme.colorScheme.primary),
                    ),
                  ),
                  onSubmitted: (val) {
                    appState.setSearchQuery(val);
                    appState.applyFilters();
                  },
                ),
              ),

              // 4. Botão 'Aplicar Filtros'
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0.5,
                ),
                onPressed: () {
                  appState.setSearchQuery(_searchController.text);
                  appState.applyFilters();
                },
                icon: const Icon(Icons.filter_alt_rounded, size: 15),
                label: const Text(
                  'Aplicar Filtros',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
