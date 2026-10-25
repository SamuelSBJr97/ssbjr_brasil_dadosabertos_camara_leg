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


/// tests for GruposApi
void main() {
  // final instance = GruposApi();

  group('tests for GruposApi', () {
    // Os grupos de cooperação entre parlamentares brasileiros e de outros países
    //
    // Este endpoint retorna uma lista em que cada item representa um dos grupos interparlamentares em que a Câmara teve representantes. As informações incluem nome, a resolução que criou o grupo e seu ano de publicação, e as mais recentes informações sobre situação, presidente e ofício de instalação.
    //
    //Future<ResultadoGrupos> grupos({ int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test grupos', () async {
      // TODO
    });

    // As variações de estado que um grupo parlamentar teve ao longo do tempo
    //
    // Uma lista contendo todos os \"retratos\" das informações sujeitas a mudanças sobre o grupo parlamentar identificado por `{id}` &mdash; por exemplo, todos os ofícios de instalação dos grupos apresentados a cada legislatura desde sua criação, e eventuais substituições de presidentes.
    //
    //Future<ResultadoGruposHistorico> historico(int id, { String accept }) async
    test('test historico', () async {
      // TODO
    });

    // Lista de parlamentares integrantes de um grupo interparlamentar
    //
    // Retorna uma lista de deputados ou senadores que são ou foram participantes do grupo interparlamentar identificado por `{id}`. Podem ser utilizados os parâmetros `dataInicio` e/ou `dataFim` para definir de qual período se deseja saber quem foram os participantes.  Se nenhum parâmetro de tempo for utilizado, são retornados os integrantes registrados no momento da requisição (inclusive deputados e senadores que podem não estar em exercício). A lista será vazia se o grupo `{id}` ainda não tiver sido instalado na legislatura atual.
    //
    //Future<ResultadoGruposMembros> membros(int id, { String dataInicio, String dataFim, String ordem, String ordenarPor, String accept }) async
    test('test membros', () async {
      // TODO
    });

    // Informações detalhadas sobre um determinado grupo interparlamentar
    //
    // Todo o conjunto de informações disponíveis sobre o grupo parlamentar identificado por `{id}`. Além dos retornados por `/grupos`, há dados sobre o projeto de resolução que levou à criação do grupo, identificadores do mais recente documento e/ou ofício de instalação do grupo, datas de sua apresentação e de sua publicação, e identificação do autor do ofício.
    //
    //Future<ResultadoGruposID> obterGruposID(int id, { String accept }) async
    test('test obterGruposID', () async {
      // TODO
    });

  });
}
