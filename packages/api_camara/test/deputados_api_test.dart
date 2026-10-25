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


/// tests for DeputadosApi
void main() {
  // final instance = DeputadosApi();

  group('tests for DeputadosApi', () {
    // Outros cargos eletivos já exercidos pelo parlamentar em sua carreira.
    //
    // Retorna uma lista em que cada item traz informações básicas sobre um cargo para o qual o parlamentar identificado por {id} tenha sido eleito, em sua carreira política fora da Câmara dos Deputados. Estes dados são fornecidos pelo Tribunal Superior Eleitoral. A lista vem ordenada cronologicamente, por padrão.
    //
    //Future<ResultadoDeputadoMandatoExterno> buscar1(int id, { String accept }) async
    test('test buscar1', () async {
      // TODO
    });

    // As despesas com exercício parlamentar do deputado
    //
    // Dá acesso aos registros de pagamentos e reembolsos feitos pela Câmara em prol do deputado identificado por `{id}`, a título da Cota para Exercício da Atividade Parlamentar, a chamada \"cota parlamentar\".  A lista pode ser filtrada por mês, ano, legislatura, CNPJ ou CPF de um fornecedor.  Se não forem passados os parâmetros de tempo, o serviço retorna os dados dos __seis meses anteriores à requisição__.
    //
    //Future<ResultadoDeputadoDespesas> getDeputadoDespesas(int id, { List<String> idLegislatura, List<String> ano, List<String> mes, String cnpjCpfFornecedor, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getDeputadoDespesas', () async {
      // TODO
    });

    // As frentes parlamentares das quais um deputado é integrante
    //
    // Retorna uma lista de informações básicas sobre as frentes parlamentares das quais o parlamentar identificado por `{id}` seja membro, ou, no caso de frentes existentes em legislaturas anteriores, tenha encerrado a legislatura como integrante.  
    //
    //Future<ResultadoIdDeputadoMembro> getDeputadoDiscursos(int id, { String accept }) async
    test('test getDeputadoDiscursos', () async {
      // TODO
    });

    // Os discursos feitos por um deputado em eventos diversos
    //
    // Retorna uma lista de informações sobre os pronunciamentos feitos pelo deputado identificado por {id} que tenham sido registrados, em quaisquer eventos, nos sistemas da Câmara.  Caso os parâmetros de tempo (`dataInicio`, `dataFim` e `idLegislatura`) não sejam configurados na requisição, são buscados os discursos ocorridos nos sete dias anteriores ao da requisição.  
    //
    //Future<ResultadoDeputadoDiscurso> getDeputadoDiscursos1(int id, { List<String> idLegislatura, String dataInicio, String dataFim, String ordenarPor, String ordem, int itens, int pagina, String accept }) async
    test('test getDeputadoDiscursos1', () async {
      // TODO
    });

    // Lista de mudanças no exercício parlamentar de um deputado (versão GraphQL otimizada)
    //
    // Endpoint alternativo que busca o histórico do deputado via API GraphQL externa de alta performance, retornando a mesma estrutura de dados do endpoint v1.
    //
    //Future<ResultadoDeputadoHistorico> getDeputadoHistoricoV2(int id, { String accept }) async
    test('test getDeputadoHistoricoV2', () async {
      // TODO
    });

    // Os órgãos dos quais um deputado é integrante
    //
    // Retorna uma lista de órgãos, como as comissões e procuradorias, dos quais o deputado identificado por `{id}` participa ou participou durante um intervalo de tempo.  Cada item identifica um órgão, o cargo ocupado pelo parlamentar neste órgão (como presidente, vice-presidente, titular ou suplente) e as datas de início e fim da ocupação deste cargo.  Se não for passado algum parâmetro de tempo, são retornados os órgãos ocupados pelo parlamentar __no momento da requisição__. Neste caso a lista será vazia se o deputado não estiver em exercício.
    //
    //Future<ResultadoDeputadoOrgaos> getDeputadoOrgaos(int id, { String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getDeputadoOrgaos', () async {
      // TODO
    });

    // As profissões que o parlamentar declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência
    //
    // Retorna uma lista de dados sobre profissões que o parlamentar identificado por `{id}` declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência.  
    //
    //Future<ResultadoDeputadoProfissoes> getDeputadoProfissao(int id, { String accept }) async
    test('test getDeputadoProfissao', () async {
      // TODO
    });

    // Uma lista de eventos com a participação do parlamentar
    //
    // Retorna uma lista de objetos `evento` nos quais a participação do parlamentar identificado por `{id}` era ou é prevista.  Um período de tempo pode ser delimitado para a busca.  Se não forem passados parâmetros de tempo, são retornados os eventos num período de __cinco dias__, sendo dois antes e dois depois do dia da requisição.  Os itens podem ser ordenados por `id`, `siglaOrgao` ou `dataHoraInicio`.
    //
    //Future<ResultadoDeputadoEventos> getEvento(int id, { String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test getEvento', () async {
      // TODO
    });

    // Os empregos e atividades que o(a) deputado(a) já teve
    //
    // Enumera as atividades profissionais ou ocupacionais que o deputado identificado por `{id}` já teve em sua carreira e declarou à Câmara dos Deputados.  *ATENÇÃO:* Há problemas reconhecidos de estruturação nesses dados. Os casos encontrados podem ser reportados ao Centro de Documentação e Informação da Câmara, por meio do endereço https://camara.leg.br/faleconosco .
    //
    //Future<ResultadoOcupacoesDeputado> getOcupacoesDeputados(int id, { String accept }) async
    test('test getOcupacoesDeputados', () async {
      // TODO
    });

    // As possíveis situações de exercício parlamentar de um deputado
    //
    // Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesDeputado() async
    test('test getSituacoesDeputado', () async {
      // TODO
    });

    // As possíveis situações de exercício parlamentar de um deputado
    //
    // Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
    //
    //Future<ResultadoReferencias> getSituacoesDeputado1() async
    test('test getSituacoesDeputado1', () async {
      // TODO
    });

    // Informações detalhadas sobre um deputado específico
    //
    //  Retorna os dados cadastrais de um parlamentar identificado por `{id}` que, em algum momento da história e por qualquer período, entrou em exercício na Câmara.
    //
    //Future<ResultadoDeputadoID> obterDeputadoID1(int id, { String accept }) async
    test('test obterDeputadoID1', () async {
      // TODO
    });

    // Listagem e busca de deputados, segundo critérios
    //
    // Retorna uma lista de dados básicos sobre deputados que estiveram em exercício parlamentar em algum intervalo de tempo.  Se não for passado um parâmetro de tempo, como `idLegislatura` ou `dataInicio`, a lista enumerará somente os deputados _em exercício no momento da requisição_.
    //
    //Future<ResultadoDeputado> obterDeputados({ List<String> id, String nome, List<String> idLegislatura, List<String> siglaUf, List<String> siglaPartido, String siglaSexo, int pagina, int itens, String dataInicio, String dataFim, String ordem, String ordenarPor, String accept }) async
    test('test obterDeputados', () async {
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

  });
}
