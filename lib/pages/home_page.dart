import 'package:flutter/material.dart';
import '../widgets/brazil_map_widget.dart';
import '../widgets/dynamic_panel_widget.dart';
import '../widgets/filter_bar_widget.dart';

/// Tela Principal Responsiva do Aplicativo Radar da Câmara
///
/// Implementa a regra de responsividade através de `LayoutBuilder`:
/// - Header fixado no topo com a barra de filtros (`FilterBarWidget`).
/// - Desktop (Largura > 800px): Corpo principal em `Row` onde o Mapa do Brasil
///   ocupa 60% do espaço e o Painel Dinâmico de Resultados/Detalhes ocupa 40%.
/// - Mobile (Largura <= 800px): Corpo principal em `Column` com scroll vertical,
///   com o Mapa no topo e o Painel de Resultados logo abaixo.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      body: SafeArea(
        child: Column(
          children: [
            // 1. Topo (Header): Barra de Filtros Fixada
            const FilterBarWidget(),

            // 2. Corpo Principal Responsivo (Desktop vs Mobile)
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final isDesktop = constraints.maxWidth > 800;

                  if (isDesktop) {
                    // DESKTOP: Row com 60% Mapa (Esquerda) e 40% Painel (Direita)
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(
                            flex: 6, // 60% da largura
                            child: BrazilMapWidget(),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            flex: 4, // 40% da largura
                            child: DynamicPanelWidget(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // MOBILE: Column vertical com scroll
                    return SingleChildScrollView(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          // Mapa centralizado no topo com altura fixa adequada
                          SizedBox(
                            height: 380,
                            child: BrazilMapWidget(),
                          ),
                          SizedBox(height: 14),
                          // Painel de Resultados e Detalhes logo abaixo
                          SizedBox(
                            height: 620,
                            child: DynamicPanelWidget(),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

