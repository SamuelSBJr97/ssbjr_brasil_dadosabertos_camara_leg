import 'package:flutter/material.dart';

/// Categorias principais pesquisáveis no Radar da Câmara
enum RadarCategory {
  deputados,
  eventos,
  votacoes,
}

extension RadarCategoryExtension on RadarCategory {
  String get label {
    switch (this) {
      case RadarCategory.deputados:
        return 'Deputados';
      case RadarCategory.eventos:
        return 'Eventos';
      case RadarCategory.votacoes:
        return 'Votações';
    }
  }

  IconData get icon {
    switch (this) {
      case RadarCategory.deputados:
        return Icons.people_alt_rounded;
      case RadarCategory.eventos:
        return Icons.event_available_rounded;
      case RadarCategory.votacoes:
        return Icons.how_to_vote_rounded;
    }
  }
}

/// Constantes e utilitários para as Unidades Federativas (UFs) brasileiras
class BrazilUfUtils {
  BrazilUfUtils._();

  static const Map<String, String> estados = {
    'AC': 'Acre',
    'AL': 'Alagoas',
    'AP': 'Amapá',
    'AM': 'Amazonas',
    'BA': 'Bahia',
    'CE': 'Ceará',
    'DF': 'Distrito Federal',
    'ES': 'Espírito Santo',
    'GO': 'Goiás',
    'MA': 'Maranhão',
    'MT': 'Mato Grosso',
    'MS': 'Mato Grosso do Sul',
    'MG': 'Minas Gerais',
    'PA': 'Pará',
    'PB': 'Paraíba',
    'PR': 'Paraná',
    'PE': 'Pernambuco',
    'PI': 'Piauí',
    'RJ': 'Rio de Janeiro',
    'RN': 'Rio Grande do Norte',
    'RS': 'Rio Grande do Sul',
    'RO': 'Rondônia',
    'RR': 'Roraima',
    'SC': 'Santa Catarina',
    'SP': 'São Paulo',
    'SE': 'Sergipe',
    'TO': 'Tocantins',
  };

  static List<String> get listaUfs => estados.keys.toList()..sort();

  static String nomeEstado(String? uf) {
    if (uf == null || uf.isEmpty) return 'Brasil (Todos)';
    return estados[uf.toUpperCase()] ?? uf;
  }

  /// Converte código retornado pelo countries_world_map (ex: "BR-SP") para sigla "SP"
  static String? extrairUf(String? id) {
    if (id == null) return null;
    final limpo = id.replaceAll('BR-', '').trim().toUpperCase();
    return estados.containsKey(limpo) ? limpo : null;
  }
}

