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


/// tests for RgosApi
void main() {
  // final instance = RgosApi();

  group('tests for RgosApi', () {
    // Informações detalhadas sobre um órgão da Câmara
    //
    // Retorna todas as informações disponíveis sobre o órgão da Câmara identificado por `id`.
    //
    //Future<ResultadoOrgaoDetalhe> getOrgaoDetalhe(int id, { String accept }) async
    test('test getOrgaoDetalhe', () async {
      // TODO
    });

    // Os eventos ocorridos ou previstos em um órgão legislativo
    //
    // Retorna uma lista de informações resumidas dos eventos realizados (ou a realizar) pelo órgão legislativo identificado por `{id}`. Por padrão, são retornados eventos em andamento ou previstos para o mesmo dia, dois dias antes e dois dias depois da requisição. Parâmetros podem ser passados para alterar esse período, bem como os tipos de eventos.
    //
    //Future<ResultadoOrgaoEventos> getOrgaoEventosDetalhe(int id, { List<String> idTipoEvento, String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getOrgaoEventosDetalhe', () async {
      // TODO
    });

    // Lista de cargos de um órgão e parlamentares que os ocupam.
    //
    // Retorna uma lista de dados resumidos que identificam cada parlamentar e o cargo ou posição que ocupa ou ocupou no órgão parlamentar identificado por `{id}` durante um certo período de tempo. Se não forem passados parâmetros que delimitem esse período, o serviço retorna os membros do órgão no momento da requisição. Se o órgão não existir mais ou não estiver instalado, é retornada uma lista vazia.
    //
    //Future<ResultadoOrgaoMembros> getOrgaoMembros(int id, { String dataInicio, String dataFim, int pagina, int itens, String accept }) async
    test('test getOrgaoMembros', () async {
      // TODO
    });

    // As situações em que órgãos podem se encontrar
    //
    // Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesOrgao() async
    test('test getSituacoesOrgao', () async {
      // TODO
    });

    // As situações em que órgãos podem se encontrar
    //
    // Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesOrgao1() async
    test('test getSituacoesOrgao1', () async {
      // TODO
    });

    // Informações detalhadas sobre votações de um órgão da Câmara
    //
    // Retorna uma lista de dados básicos de votações que tenham sido realizadas em eventos realizados no órgão `{id}`.  Se `{id}` for um órgão permanente da Câmara, são retornados, por padrão, dados sobre as votações realizadas pelo órgão nos últimos 30 dias. Esse período pode ser alterado com o uso dos parâmetros `dataInicio` e/ou `dataFim`, que por enquanto são limitados a selecionar somente votações ocorridas em um mesmo ano.  Caso `{id}` seja um órgão temporário, como uma comissão especial, são listadas por padrão todas as votações ocorridas no órgão, em qualquer período de tempo.  Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
    //
    //Future<ResultadoVotacoes> getVotacoesPorOrgao(int id, { List<String> idProposicao, String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getVotacoesPorOrgao', () async {
      // TODO
    });

    // A lista das comissões e outros órgãos legislativos da Câmara
    //
    // Retorna uma lista de informações básicas sobre os órgãos legislativos e seus identificadores, tipos e descrições.  Pela query string é possível filtrar a lista por identificadores, tipos de órgãos, sigla, situação do órgão ou período de tempo em que os órgãos estiveram ativos, se aplicável.
    //
    //Future<ResultadoOrgaos> listar1({ List<String> id, List<String> sigla, List<String> codTipoOrgao, String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test listar1', () async {
      // TODO
    });

  });
}
