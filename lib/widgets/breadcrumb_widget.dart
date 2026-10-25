import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/app_state.dart';

/// Componente de Breadcrumb Dinâmico e Interativo
///
/// Exibe a trilha de navegação em cascata (ex: Início > SP > Deputado João > Despesas)
/// e permite ao usuário clicar em qualquer nível anterior para retroceder imediatamente.
class BreadcrumbWidget extends StatelessWidget {
  const BreadcrumbWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final stack = appState.panelStack;

    if (stack.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < stack.length; i++) ...[
              if (i > 0)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    size: 16,
                    color: Colors.grey.shade400,
                  ),
                ),
              _buildBreadcrumbItem(
                context,
                index: i,
                isLast: i == stack.length - 1,
                title: stack[i].title,
                icon: stack[i].icon,
                onTap: () {
                  if (i < stack.length - 1) {
                    appState.popToPanel(i);
                  }
                },
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumbItem(
    BuildContext context, {
    required int index,
    required bool isLast,
    required String title,
    required VoidCallback onTap,
    IconData? icon,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    if (isLast) {
      // Último item (tela atual): destacado e sem clique
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: colorScheme.primary.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 14, color: colorScheme.primary),
              const SizedBox(width: 4),
            ],
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
      );
    }

    // Itens anteriores: clicáveis
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 14, color: Colors.grey.shade600),
              const SizedBox(width: 4),
            ],
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
                decoration: TextDecoration.underline,
                decorationColor: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
