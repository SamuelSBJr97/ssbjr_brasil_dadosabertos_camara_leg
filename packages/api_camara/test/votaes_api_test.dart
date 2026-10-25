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


/// tests for VotaesApi
void main() {
  // final instance = VotaesApi();

  group('tests for VotaesApi', () {
    // Informações detalhadas sobre uma votação da Câmara
    //
    // Retorna um conjunto detalhado de dados sobre a votação identificada por `{id}`, tais como as proposições que podem ter sido o objeto da votação e os efeitos de tramitação de outras proposições que eventualmente tenham sido cadastrados em consequência desta votação.  Para compreender melhor os dados retornados, veja o [tutorial sobre votações do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
    //
    //Future<ResultadoVotacoesID> getVotacaoID(String id, { String accept }) async
    test('test getVotacaoID', () async {
      // TODO
    });

    // O voto recomendado pelas lideranças aos seus deputados em uma votação.
    //
    // Em muitas votações, os líderes de partidos e blocos - as _bancadas_ - fazem recomendações de voto para seus parlamentares. Essas _orientações_ de uma votação também são feitas pelas lideranças de Governo, Minoria e as mais recentes Maioria e Oposição. Uma liderança também pode _liberar a bancada_ para que cada deputado vote como quiser, ou entrar em _obstrução_, para que seus parlamentares não sejam contados para o quórum da votação.  Se a votação identificada por `{id}` teve orientações, este recurso retorna uma lista em que cada item contém os identificadores de um partido, bloco ou liderança, e o posicionamento ou voto que foi recomendado aos seus parlamentares.  Até o momento, só estão disponíveis dados sobre orientações dadas em votações no Plenário.
    //
    //Future<ResultadoVotacoesIDOrientacoes> getVotacaoIDOrientacoes(String id, { String accept }) async
    test('test getVotacaoIDOrientacoes', () async {
      // TODO
    });

    // Como cada parlamentar votou em uma votação nominal e aberta
    //
    // Se `{id}` é o identificador de uma votação da Câmara _nominal_ que não tenha sido _secreta_, este _endpoint_ retorna uma lista em que cada item contém os identificadores básicos de um deputado e o voto ou posicionamento que ele registrou.   O resultado é uma lista vazia se `{id}` foi uma votação _simbólica_, em que os votos individuais não são contabilizados. Mas há algumas votações simbólicas que também têm registros de \\\"votos\\\": nesses casos, normalmente se trata de parlamentares que pediram expressamente que seus posicionamentos fossem registrados.  Não são listados parlamentares ausentes à votação.
    //
    //Future<ResultadoVotacoesIDVotos> getVotacaoVotosPorId(String id, { String accept }) async
    test('test getVotacaoVotosPorId', () async {
      // TODO
    });

    // Lista das votações da Câmara
    //
    // Retorna uma lista de informações básicas sobre as votações ocorridas em eventos dos diversos órgãos da Câmara.  Se não forem passados parâmetros que delimitem o intervalo de tempo da pesquisa, são retornados dados sobre todas as votações ocorridas nos últimos 30 dias, em eventos de todos os órgãos.  Os parâmetros de data permitem estender o período, mas por enquanto é **necessário** que as duas datas sejam de um mesmo ano. Quando apenas uma delas está presente, são retornadas somente as votações ocorridas no mesmo ano, antes de `dataFim` ou após `dataInicio`.  Também é possível filtrar a listagem por identificadores de órgãos da Câmara, de proposições e de eventos.  Quando não há identificação da proposição que foi efetivamente votada, é preciso consultar o endpoint `/votacoes/{id}` para obter uma lista de proposições das quais uma pode ter sido o objeto da votação.  Para mais informações sobre o uso dos endpoints de votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
    //
    //Future<ResultadoVotacoes> listar({ List<String> id, List<String> idProposicao, List<String> idEvento, List<String> idOrgao, String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test listar', () async {
      // TODO
    });

  });
}
