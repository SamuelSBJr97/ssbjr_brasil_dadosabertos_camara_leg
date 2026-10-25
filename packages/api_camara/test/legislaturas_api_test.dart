//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:api_camara/api.dart';
import 'package:test/test.dart';


/// tests for LegislaturasApi
void main() {
  // final instance = LegislaturasApi();

  group('tests for LegislaturasApi', () {
    // Os períodos de mandatos e atividades parlamentares da Câmara
    //
    // Legislatura é o nome dado ao período de trabalhos parlamentares entre uma eleição e outra.  Este serviço retorna uma lista em que cada item contém as informações básicas sobre um desses períodos.  Os números que identificam as legislaturas são sequenciais, desde a primeira que ocorreu.
    //
    //Future<ResultadoLegislaturas> getLegislatura({ List<String> id, String data, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getLegislatura', () async {
      // TODO
    });

    // Lista de líderes, vice-líderes e representantes na legislatura
    //
    // Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura `{id}`. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.
    //
    //Future<ResultadoLegislaturaIDLideres> obterLideres1(List<String> id, { int pagina, int itens, String accept }) async
    test('test obterLideres1', () async {
      // TODO
    });

    // Quais deputados fizeram parte da Mesa Diretora em uma legislatura
    //
    // Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por `{id}`.  Normalmente, cada legislatura tem duas Mesas Diretoras, com presidente, dois vice-presidentes, quatro secretários parlamentares e os suplentes dos secretários.
    //
    //Future<ResultadoLegislaturaIDMesa> obterMesaPorId(int id, { String dataInicio, String dataFim, String accept }) async
    test('test obterMesaPorId', () async {
      // TODO
    });

    // Informações extras sobre uma determinada legislatura da Câmara
    //
    // Retorna informações adicionais sobre o período de atividades da Câmara identificado por `{id}`. 
    //
    //Future<ResultadoLegislaturasDetalhe> obterPorId1(int id, { String accept }) async
    test('test obterPorId1', () async {
      // TODO
    });

  });
}
