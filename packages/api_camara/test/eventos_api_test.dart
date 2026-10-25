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


/// tests for EventosApi
void main() {
  // final instance = EventosApi();

  group('tests for EventosApi', () {
    // Lista de eventos ocorridos ou previstos nos diversos órgãos da Câmara
    //
    // Retorna uma lista cujos elementos trazem informações básicas sobre eventos dos órgãos legislativos da Câmara, previstos ou já ocorridos, em um certo intervalo de tempo.  Esse intervalo pode ser configurado pelos parâmetros de data e hora listados abaixo. Se nenhum for passado, são listados eventos dos cinco dias anteriores, dos cinco dias seguintes e do próprio dia em que é feita a requisição.
    //
    //Future<ResultadoEventos> getEventos({ List<String> id, List<String> codTipoEvento, List<String> codSituacao, List<String> codTipoOrgao, List<String> idOrgao, String dataInicio, String dataFim, String horaInicio, String horaFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getEventos', () async {
      // TODO
    });

    // Informações detalhadas sobre um evento específico
    //
    // Retorna um conjunto detalhado de informações sobre o evento da Câmara identificado por `id`.
    //
    //Future<ResultadoEventosID> getEventos1(int id, { String accept }) async
    test('test getEventos1', () async {
      // TODO
    });

    // Os deputados participantes de um evento específico
    //
    // Retorna uma lista de dados resumidos sobre deputados participantes do evento identificado por `{id}`. Se o evento já ocorreu, a lista identifica os deputados que efetivamente registraram presença no evento. Se o evento ainda não ocorreu, a lista mostra os deputados que _devem_ participar do evento, por serem convidados ou por serem membros do(s) órgão(s) responsável pelo evento.
    //
    //Future<ResultadoEventosDeputado> getEventosDeputados(int id, { String accept }) async
    test('test getEventosDeputados', () async {
      // TODO
    });

    // Lista de proposições que foram ou deverão ser avaliadas em um evento de caráter deliberativo
    //
    // Se o evento `{id}` for de caráter deliberativo (uma reunião ordinária, por exemplo) este serviço retorna a lista de proposições previstas para avaliação pelos parlamentares. Cada item identifica, se as informações estiverem disponíveis, a proposição avaliada, o regime de preferência para avaliação, o relator e seu parecer, o resultado da apreciação e a votação realizada.
    //
    //Future<ResultadoEventosPauta> getEventosPauta(int id, { String accept }) async
    test('test getEventosPauta', () async {
      // TODO
    });

    // As possíveis situações para eventos
    //
    // Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
    //
    //Future<ResultadoReferencias> getSituacoesEvento() async
    test('test getSituacoesEvento', () async {
      // TODO
    });

    // As possíveis situações para eventos
    //
    // Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
    //
    //Future<ResultadoReferencias> getSituacoesEvento1() async
    test('test getSituacoesEvento1', () async {
      // TODO
    });

    // Os tipos de eventos realizados na Câmara
    //
    // Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
    //
    //Future<ResultadoReferencias> getTiposEvento() async
    test('test getTiposEvento', () async {
      // TODO
    });

    // Os tipos de eventos realizados na Câmara
    //
    // Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
    //
    //Future<ResultadoReferencias> getTiposEvento1() async
    test('test getTiposEvento1', () async {
      // TODO
    });

    // Lista de órgãos organizadores do evento `{id}`
    //
    // Retorna uma lista em que cada item é um conjunto mínimo de dados sobre o(s) órgão(s) responsável(veis) pelo evento identificado por `{id}`. Atualmente, mas _provisoriamente_, esta informação já vem incorporada ao retorno de `/eventos/{id}`, mas este _endpoint_ facilita a importação destes dados em planilhas eletrônicas.
    //
    //Future<ResultadoEventoOrgao> obterOrgaosDoEvento(int id, { String accept }) async
    test('test obterOrgaosDoEvento', () async {
      // TODO
    });

    // Informações detalhadas de votações sobre um evento específico
    //
    // Retorna uma lista de dados básicos sobre votações que tenham sido realizadas no evento identificado por `{id}`. Votações só ocorrem em eventos de caráter deliberativo. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
    //
    //Future<ResultadoVotacoes> obterVotacoesPorEvento(int id, { String accept }) async
    test('test obterVotacoesPorEvento', () async {
      // TODO
    });

  });
}
