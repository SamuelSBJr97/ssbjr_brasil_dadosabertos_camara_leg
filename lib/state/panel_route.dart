import 'package:flutter/material.dart';

/// Representa um nível na pilha de navegação interna do Painel Dinâmico.
/// Alimenta tanto o Breadcrumb quanto a view exibida.
class PanelRouteItem {
  /// Rótulo exibido no Breadcrumb (ex: "Início", "SP", "Deputado João", "Despesas")
  final String title;

  /// Widget correspondente a este nível da pilha
  final Widget widget;

  /// Ícone contextual opcional exibido no Breadcrumb
  final IconData? icon;

  /// Chave única opcional para rastreamento
  final String? keyId;

  PanelRouteItem({
    required this.title,
    required this.widget,
    this.icon,
    this.keyId,
  });
}

