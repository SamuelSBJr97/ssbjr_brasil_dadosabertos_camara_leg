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


/// tests for BlocosApi
void main() {
  // final instance = BlocosApi();

  group('tests for BlocosApi', () {
    // Lista de dados sobre os blocos partidários
    //
    // Nas atividades parlamentares, partidos podem se juntar em __blocos partidários__. Quando associados, os partidos passam a trabalhar como se fossem um \"partidão\", com um só líder e um mesmo conjunto de vice-líderes.  Os blocos só podem existir até o fim da legislatura em que foram criados: na legislatura seguinte, os mesmos partidos, se associados, formam um novo bloco.  Este recurso é uma lista dos blocos em atividade no momento da requisição. Se forem passados números de legislaturas com o parâmetro _idLegislatura_, são listados também os blocos formados e extintos nessas legislaturas.
    //
    //Future<ResultadoBloco> getBlocos({ List<String> id, List<String> idLegislatura, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getBlocos', () async {
      // TODO
    });

    // Informações sobre um bloco partidário específico
    //
    // Retorna informações sobre o bloco identificado por `{id}` além daquelas obtidas na listagem.
    //
    //Future<ResultadoBloco> obterBlocoID(int id, { String accept }) async
    test('test obterBlocoID', () async {
      // TODO
    });

    // Lista de partidos do bloco.
    //
    // Lista em que cada item contém os identificadores básicos de cada partido integrante do bloco identificado por {id}.
    //
    //Future<ResultadoBloco> obterBlocoIDPartidos(int id, { String data, String accept }) async
    test('test obterBlocoIDPartidos', () async {
      // TODO
    });

  });
}
