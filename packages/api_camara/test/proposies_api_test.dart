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


/// tests for ProposiesApi
void main() {
  // final instance = ProposiesApi();

  group('tests for ProposiesApi', () {
    // Os possíveis estados de tramitação de uma proposição
    //
    // Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesProposicao() async
    test('test getSituacoesProposicao', () async {
      // TODO
    });

    // Os possíveis estados de tramitação de uma proposição
    //
    // Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesProposicao1() async
    test('test getSituacoesProposicao1', () async {
      // TODO
    });

    // Os vários tipos de temas existentes
    //
    // Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.
    //
    //Future<ResultadoEventos> getTemasProposicao() async
    test('test getTemasProposicao', () async {
      // TODO
    });

    // Entidades que podem ser autoras de proposições
    //
    // Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
    //
    //Future<ResultadoReferencias> getTiposAutor() async
    test('test getTiposAutor', () async {
      // TODO
    });

    // Entidades que podem ser autoras de proposições
    //
    // Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
    //
    //Future<ResultadoReferencias> getTiposAutor1() async
    test('test getTiposAutor1', () async {
      // TODO
    });

    // Os vários tipos de proposições existentes
    //
    // Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
    //
    //Future<ResultadoEventos> getTiposProposicao() async
    test('test getTiposProposicao', () async {
      // TODO
    });

    // Os vários tipos de proposições existentes
    //
    // Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
    //
    //Future<ResultadoEventos> getTiposProposicao1() async
    test('test getTiposProposicao1', () async {
      // TODO
    });

    // Os vários tipos de tramitação existentes
    //
    // Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
    //
    //Future<ResultadoEventos> getTiposTramitacao() async
    test('test getTiposTramitacao', () async {
      // TODO
    });

    // Os vários tipos de tramitação existentes
    //
    // Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
    //
    //Future<ResultadoEventos> getTiposTramitacao1() async
    test('test getTiposTramitacao1', () async {
      // TODO
    });

    // Lista pessoas e/ou entidades autoras de uma proposição
    //
    // Retorna uma lista em que cada item identifica uma pessoa ou entidade que é autora da proposição identificada por `{id}`. Além de deputados, também podem ser autores de proposições os senadores, a sociedade civil, assembleias legislativas e os poderes Executivo e Judiciário.  Pelo Regimento da Câmara, todos os que assinam uma proposição são considerados autores (art. 102), tanto os proponentes quanto os apoiadores.  Para obter mais informações sobre cada autor, é recomendável acessar, se disponível, a URL que é valor do campo `uri`.
    //
    //Future<ResultadoProposicoesAutores> obterAutoresDaProposicao(int id, { String accept }) async
    test('test obterAutoresDaProposicao', () async {
      // TODO
    });

    // Informações detalhadas sobre uma proposição específica
    //
    //Future<Object> obterPorId(int id, { String accept }) async
    test('test obterPorId', () async {
      // TODO
    });

    // Uma lista de proposições relacionadas a uma em especial
    //
    // Lista de informações básicas sobre proposições que de alguma forma se relacionam com a proposição identificada por `{id}`, como pareceres, requerimentos, substitutivos, etc.  
    //
    //Future<ResultadoProposicoesRelacionadas> obterRelacionadasPorId(int id, { String accept }) async
    test('test obterRelacionadasPorId', () async {
      // TODO
    });

    // Lista de áreas temáticas de uma proposição
    //
    // Lista em que cada item traz informações sobre uma área temática à qual a proposição identificada por `{id}` se relaciona, segundo classificação oficial do Centro de Documentação e Informação da Câmara.
    //
    //Future<ResultadoProposicoesTema> obterTemasPorId(int id, { String accept }) async
    test('test obterTemasPorId', () async {
      // TODO
    });

    // O histórico de passos na tramitação de uma proposta
    //
    // Lista que traz, como cada item, um \"retrato\" de informações que podem ser alteradas a cada etapa de tramitação na vida de uma proposição (como regime de tramitação e situação) e informações sobre o que causou esse novo estado.  Esta representação das tramitações ainda é provisória.
    //
    //Future<ResultadoFrentes> obterTramitacaoPorId(int id, { String dataInicio, String dataFim, String accept }) async
    test('test obterTramitacaoPorId', () async {
      // TODO
    });

    // Informações detalhadas de votações sobre uma proposição específica
    //
    // Retorna uma lista de identificadores básicos sobre as votações na Câmara que tiveram a proposição `{id}` como _objeto_ ou como _afetada_ pelos seus resultados. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
    //
    //Future<ResultadoVotacoes> obterVotacoesPorId(int id, { String ordem, String ordenarPor, String accept }) async
    test('test obterVotacoesPorId', () async {
      // TODO
    });

    // Lista configurável de proposições na Câmara
    //
    // Lista de informações básicas sobre projetos de lei, resoluções, medidas provisórias, emendas, pareceres e todos os outros tipos de proposições na Câmara.  Por padrão, são retornadas todas as proposições que foram apresentadas ou tiveram alguma mudança de situação nos últimos 30 dias. Esse intervalo de tramitação pode ser configurado pelos parâmetros `dataInicio` e `dataFim`.  Se for(em) passado(s) um ou mais dos parâmetros...    - `id`    - `ano`    - `dataApresentacaoInicio`    - `dataApresentacaoFim`    - `idAutor`    - `autor`  ...o intervalo de tramitação só será levado em consideração se os parâmetros `dataInicio` e/ou `dataFim` estiverem explicitamente configurados. Se não estiverem, poderão ser listadas proposições que não tiveram tramitação recente (e a resposta pode demorar bastante).
    //
    //Future<ResultadoProposicoes> search({ List<String> id, List<String> siglaTipo, List<String> numero, List<String> ano, List<String> codTipo, List<String> idDeputadoAutor, String autor, List<String> siglaPartidoAutor, int idPartidoAutor, List<String> siglaUfAutor, List<String> keywords, bool tramitacaoSenado, DateTime dataInicio, DateTime dataFim, DateTime dataApresentacaoInicio, DateTime dataApresentacaoFim, List<String> codSituacao, List<String> codTema, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test search', () async {
      // TODO
    });

  });
}
