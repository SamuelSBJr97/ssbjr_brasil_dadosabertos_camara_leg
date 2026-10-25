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


/// tests for FrentesApi
void main() {
  // final instance = FrentesApi();

  group('tests for FrentesApi', () {
    // Lista de frentes parlamentares de uma ou mais legislaturas
    //
    // Retorna uma lista de informações sobre uma frente parlamentar - um agrupamento oficial de parlamentares em torno de um determinado tema ou proposta.  As frentes existem até o fim da legislatura em que foram criadas, e podem ser recriadas a cada legislatura. Algumas delas são compostas por deputados e senadores.  Um ou mais número de legislatura(s) pode(m) ser passado(s) como parâmetro, mas se for omitido são retornadas todas as frentes parlamentares criadas desde 2003.
    //
    //Future<ResultadoFrentes> buscar({ List<String> idLegislatura, int pagina, int itens, String accept }) async
    test('test buscar', () async {
      // TODO
    });

    // Informações detalhadas sobre uma frente parlamentar
    //
    // Este recurso traz informações detalhadas sobre a frente parlamentar identificada por `{id}`.
    //
    //Future<ResultadoFrenteID> obterDeputadoID(int id, { String accept }) async
    test('test obterDeputadoID', () async {
      // TODO
    });

    // Os deputados que participam de uma frente parlamentar
    //
    // Uma lista dos deputados participantes da frente parlamentar identificada por `{id}` e os papéis que exerceram nessa frente (signatário, coordenador ou presidente).  Observe que, mesmo no caso de frentes parlamentares mistas (compostas por deputados e senadores), são retornados apenas dados sobre os deputados.
    //
    //Future<ResultadoMembroFrente> obterMembro(int id, { String accept }) async
    test('test obterMembro', () async {
      // TODO
    });

  });
}
