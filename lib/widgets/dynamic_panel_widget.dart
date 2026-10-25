import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/app_state.dart';
import 'breadcrumb_widget.dart';

/// Painel Dinâmico de Resultados e Detalhes com Navegação em Cascata (Stack)
///
/// Este componente funciona como um mini-navegador contextual:
/// - Possui barra superior com Breadcrumb clicável;
/// - Permite empilhar visualizações (Lista -> Detalhes -> Despesas/Discursos/Votos)
///   sem recarregar o resto da tela ou o mapa;
/// - Fornece transição suave entre os níveis de detalhe.
class DynamicPanelWidget extends StatelessWidget {
  const DynamicPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final canPop = appState.panelStack.length > 1;

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            // Barra de Topo do Painel: Botão Voltar + Breadcrumb
            Row(
              children: [
                if (canPop)
                  IconButton(
                    tooltip: 'Voltar ao nível anterior',
                    icon: const Icon(Icons.arrow_back_rounded, size: 20),
                    onPressed: () => appState.popPanel(),
                  ),
                const Expanded(
                  child: BreadcrumbWidget(),
                ),
                if (canPop)
                  IconButton(
                    tooltip: 'Voltar para a Lista Geral',
                    icon: const Icon(Icons.home_outlined, size: 20),
                    onPressed: () => appState.resetPanelToRoot(),
                  ),
              ],
            ),

            const Divider(height: 1),

            // View Atual da Pilha de Navegação Interna com Transição Suave
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: KeyedSubtree(
                  key: ValueKey(appState.currentPanel.keyId ??
                      appState.panelStack.length),
                  child: appState.currentPanel.widget,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
