//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GruposApi {
  GruposApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Os grupos de cooperação entre parlamentares brasileiros e de outros países
  ///
  /// Este endpoint retorna uma lista em que cada item representa um dos grupos interparlamentares em que a Câmara teve representantes. As informações incluem nome, a resolução que criou o grupo e seu ano de publicação, e as mais recentes informações sobre situação, presidente e ofício de instalação.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `idLegislatura`.
  ///
  /// * [String] accept:
  Future<Response> gruposWithHttpInfo({ int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/grupos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
    }
    if (ordem != null) {
      queryParams.addAll(_queryParams('', 'ordem', ordem));
    }
    if (ordenarPor != null) {
      queryParams.addAll(_queryParams('', 'ordenarPor', ordenarPor));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os grupos de cooperação entre parlamentares brasileiros e de outros países
  ///
  /// Este endpoint retorna uma lista em que cada item representa um dos grupos interparlamentares em que a Câmara teve representantes. As informações incluem nome, a resolução que criou o grupo e seu ano de publicação, e as mais recentes informações sobre situação, presidente e ofício de instalação.
  ///
  /// Parameters:
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `idLegislatura`.
  ///
  /// * [String] accept:
  Future<ResultadoGrupos?> grupos({ int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await gruposWithHttpInfo(pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoGrupos',) as ResultadoGrupos;
    
    }
    return null;
  }

  /// As variações de estado que um grupo parlamentar teve ao longo do tempo
  ///
  /// Uma lista contendo todos os \"retratos\" das informações sujeitas a mudanças sobre o grupo parlamentar identificado por `{id}` &mdash; por exemplo, todos os ofícios de instalação dos grupos apresentados a cada legislatura desde sua criação, e eventuais substituições de presidentes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico de Grupo histórico.
  ///
  /// * [String] accept:
  Future<Response> historicoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/grupos/{id}/historico'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// As variações de estado que um grupo parlamentar teve ao longo do tempo
  ///
  /// Uma lista contendo todos os \"retratos\" das informações sujeitas a mudanças sobre o grupo parlamentar identificado por `{id}` &mdash; por exemplo, todos os ofícios de instalação dos grupos apresentados a cada legislatura desde sua criação, e eventuais substituições de presidentes.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico de Grupo histórico.
  ///
  /// * [String] accept:
  Future<ResultadoGruposHistorico?> historico(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await historicoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoGruposHistorico',) as ResultadoGruposHistorico;
    
    }
    return null;
  }

  /// Lista de parlamentares integrantes de um grupo interparlamentar
  ///
  /// Retorna uma lista de deputados ou senadores que são ou foram participantes do grupo interparlamentar identificado por `{id}`. Podem ser utilizados os parâmetros `dataInicio` e/ou `dataFim` para definir de qual período se deseja saber quem foram os participantes.  Se nenhum parâmetro de tempo for utilizado, são retornados os integrantes registrados no momento da requisição (inclusive deputados e senadores que podem não estar em exercício). A lista será vazia se o grupo `{id}` ainda não tiver sido instalado na legislatura atual.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número(s) identificador(es) de um Membro.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `idLegislatura`.
  ///
  /// * [String] accept:
  Future<Response> membrosWithHttpInfo(int id, { String? dataInicio, String? dataFim, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/grupos/{id}/membros'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
    }
    if (ordem != null) {
      queryParams.addAll(_queryParams('', 'ordem', ordem));
    }
    if (ordenarPor != null) {
      queryParams.addAll(_queryParams('', 'ordenarPor', ordenarPor));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Lista de parlamentares integrantes de um grupo interparlamentar
  ///
  /// Retorna uma lista de deputados ou senadores que são ou foram participantes do grupo interparlamentar identificado por `{id}`. Podem ser utilizados os parâmetros `dataInicio` e/ou `dataFim` para definir de qual período se deseja saber quem foram os participantes.  Se nenhum parâmetro de tempo for utilizado, são retornados os integrantes registrados no momento da requisição (inclusive deputados e senadores que podem não estar em exercício). A lista será vazia se o grupo `{id}` ainda não tiver sido instalado na legislatura atual.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número(s) identificador(es) de um Membro.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `idLegislatura`.
  ///
  /// * [String] accept:
  Future<ResultadoGruposMembros?> membros(int id, { String? dataInicio, String? dataFim, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await membrosWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoGruposMembros',) as ResultadoGruposMembros;
    
    }
    return null;
  }

  /// Informações detalhadas sobre um determinado grupo interparlamentar
  ///
  /// Todo o conjunto de informações disponíveis sobre o grupo parlamentar identificado por `{id}`. Além dos retornados por `/grupos`, há dados sobre o projeto de resolução que levou à criação do grupo, identificadores do mais recente documento e/ou ofício de instalação do grupo, datas de sua apresentação e de sua publicação, e identificação do autor do ofício.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do Grupo.
  ///
  /// * [String] accept:
  Future<Response> obterGruposIDWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/grupos/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Informações detalhadas sobre um determinado grupo interparlamentar
  ///
  /// Todo o conjunto de informações disponíveis sobre o grupo parlamentar identificado por `{id}`. Além dos retornados por `/grupos`, há dados sobre o projeto de resolução que levou à criação do grupo, identificadores do mais recente documento e/ou ofício de instalação do grupo, datas de sua apresentação e de sua publicação, e identificação do autor do ofício.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do Grupo.
  ///
  /// * [String] accept:
  Future<ResultadoGruposID?> obterGruposID(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterGruposIDWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoGruposID',) as ResultadoGruposID;
    
    }
    return null;
  }
}
