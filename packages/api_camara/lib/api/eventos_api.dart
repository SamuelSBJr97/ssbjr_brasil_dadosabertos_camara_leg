//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EventosApi {
  EventosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lista de eventos ocorridos ou previstos nos diversos órgãos da Câmara
  ///
  /// Retorna uma lista cujos elementos trazem informações básicas sobre eventos dos órgãos legislativos da Câmara, previstos ou já ocorridos, em um certo intervalo de tempo.  Esse intervalo pode ser configurado pelos parâmetros de data e hora listados abaixo. Se nenhum for passado, são listados eventos dos cinco dias anteriores, dos cinco dias seguintes e do próprio dia em que é feita a requisição.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Identificador(es) numérico(s) de um ou mais eventos, separados por vírgulas.
  ///
  /// * [List<String>] codTipoEvento:
  ///   Um ou mais identificador(es) numérico(s) do(s) tipo(s) de evento que se deseja obter. Os valores válidos podem ser obtidos por uma requisição a `/referencias/tiposEvento`.
  ///
  /// * [List<String>] codSituacao:
  ///   Um ou mais identificador(es) numéricos de tipo(s) de situação de evento, separados por vírgula. Valores válidos podem ser obtidos em `/referencias/situacoesEvento`.
  ///
  /// * [List<String>] codTipoOrgao:
  ///   Um ou mais identificador(es) numérico(s) de tipo(s) de órgão(s) realizadores dos eventos que se deseja obter, separados por vírgula. Os valores válidos podem ser obtidos em `/referencias/tiposOrgao`.
  ///
  /// * [List<String>] idOrgao:
  ///   Um ou mais identificador(es) numérico(s) de órgão(s), separados por vírgula. Os identificadores podem ser obtidos em uma requisição a `/orgaos`.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] horaInicio:
  ///   Hora inicial de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
  ///
  /// * [String] horaFim:
  ///   Hora final de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
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
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `dataHoraInicio`, `dataHoraFim`, `descricaoSituacao`, `descricaoTipo` ou `titulo`
  ///
  /// * [String] accept:
  Future<Response> getEventosWithHttpInfo({ List<String>? id, List<String>? codTipoEvento, List<String>? codSituacao, List<String>? codTipoOrgao, List<String>? idOrgao, String? dataInicio, String? dataFim, String? horaInicio, String? horaFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (codTipoEvento != null) {
      queryParams.addAll(_queryParams('csv', 'codTipoEvento', codTipoEvento));
    }
    if (codSituacao != null) {
      queryParams.addAll(_queryParams('csv', 'codSituacao', codSituacao));
    }
    if (codTipoOrgao != null) {
      queryParams.addAll(_queryParams('csv', 'codTipoOrgao', codTipoOrgao));
    }
    if (idOrgao != null) {
      queryParams.addAll(_queryParams('csv', 'idOrgao', idOrgao));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
    }
    if (horaInicio != null) {
      queryParams.addAll(_queryParams('', 'horaInicio', horaInicio));
    }
    if (horaFim != null) {
      queryParams.addAll(_queryParams('', 'horaFim', horaFim));
    }
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

  /// Lista de eventos ocorridos ou previstos nos diversos órgãos da Câmara
  ///
  /// Retorna uma lista cujos elementos trazem informações básicas sobre eventos dos órgãos legislativos da Câmara, previstos ou já ocorridos, em um certo intervalo de tempo.  Esse intervalo pode ser configurado pelos parâmetros de data e hora listados abaixo. Se nenhum for passado, são listados eventos dos cinco dias anteriores, dos cinco dias seguintes e do próprio dia em que é feita a requisição.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Identificador(es) numérico(s) de um ou mais eventos, separados por vírgulas.
  ///
  /// * [List<String>] codTipoEvento:
  ///   Um ou mais identificador(es) numérico(s) do(s) tipo(s) de evento que se deseja obter. Os valores válidos podem ser obtidos por uma requisição a `/referencias/tiposEvento`.
  ///
  /// * [List<String>] codSituacao:
  ///   Um ou mais identificador(es) numéricos de tipo(s) de situação de evento, separados por vírgula. Valores válidos podem ser obtidos em `/referencias/situacoesEvento`.
  ///
  /// * [List<String>] codTipoOrgao:
  ///   Um ou mais identificador(es) numérico(s) de tipo(s) de órgão(s) realizadores dos eventos que se deseja obter, separados por vírgula. Os valores válidos podem ser obtidos em `/referencias/tiposOrgao`.
  ///
  /// * [List<String>] idOrgao:
  ///   Um ou mais identificador(es) numérico(s) de órgão(s), separados por vírgula. Os identificadores podem ser obtidos em uma requisição a `/orgaos`.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] horaInicio:
  ///   Hora inicial de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
  ///
  /// * [String] horaFim:
  ///   Hora final de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
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
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `dataHoraInicio`, `dataHoraFim`, `descricaoSituacao`, `descricaoTipo` ou `titulo`
  ///
  /// * [String] accept:
  Future<ResultadoEventos?> getEventos({ List<String>? id, List<String>? codTipoEvento, List<String>? codSituacao, List<String>? codTipoOrgao, List<String>? idOrgao, String? dataInicio, String? dataFim, String? horaInicio, String? horaFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getEventosWithHttpInfo(id: id, codTipoEvento: codTipoEvento, codSituacao: codSituacao, codTipoOrgao: codTipoOrgao, idOrgao: idOrgao, dataInicio: dataInicio, dataFim: dataFim, horaInicio: horaInicio, horaFim: horaFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Informações detalhadas sobre um evento específico
  ///
  /// Retorna um conjunto detalhado de informações sobre o evento da Câmara identificado por `id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do evento do qual se deseja informações
  ///
  /// * [String] accept:
  Future<Response> getEventos1WithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos/{id}'
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

  /// Informações detalhadas sobre um evento específico
  ///
  /// Retorna um conjunto detalhado de informações sobre o evento da Câmara identificado por `id`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do evento do qual se deseja informações
  ///
  /// * [String] accept:
  Future<ResultadoEventosID?> getEventos1(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getEventos1WithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventosID',) as ResultadoEventosID;
    
    }
    return null;
  }

  /// Os deputados participantes de um evento específico
  ///
  /// Retorna uma lista de dados resumidos sobre deputados participantes do evento identificado por `{id}`. Se o evento já ocorreu, a lista identifica os deputados que efetivamente registraram presença no evento. Se o evento ainda não ocorreu, a lista mostra os deputados que _devem_ participar do evento, por serem convidados ou por serem membros do(s) órgão(s) responsável pelo evento.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<Response> getEventosDeputadosWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos/{id}/deputados'
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

  /// Os deputados participantes de um evento específico
  ///
  /// Retorna uma lista de dados resumidos sobre deputados participantes do evento identificado por `{id}`. Se o evento já ocorreu, a lista identifica os deputados que efetivamente registraram presença no evento. Se o evento ainda não ocorreu, a lista mostra os deputados que _devem_ participar do evento, por serem convidados ou por serem membros do(s) órgão(s) responsável pelo evento.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<ResultadoEventosDeputado?> getEventosDeputados(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getEventosDeputadosWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventosDeputado',) as ResultadoEventosDeputado;
    
    }
    return null;
  }

  /// Lista de proposições que foram ou deverão ser avaliadas em um evento de caráter deliberativo
  ///
  /// Se o evento `{id}` for de caráter deliberativo (uma reunião ordinária, por exemplo) este serviço retorna a lista de proposições previstas para avaliação pelos parlamentares. Cada item identifica, se as informações estiverem disponíveis, a proposição avaliada, o regime de preferência para avaliação, o relator e seu parecer, o resultado da apreciação e a votação realizada.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<Response> getEventosPautaWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos/{id}/pauta'
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

  /// Lista de proposições que foram ou deverão ser avaliadas em um evento de caráter deliberativo
  ///
  /// Se o evento `{id}` for de caráter deliberativo (uma reunião ordinária, por exemplo) este serviço retorna a lista de proposições previstas para avaliação pelos parlamentares. Cada item identifica, se as informações estiverem disponíveis, a proposição avaliada, o regime de preferência para avaliação, o relator e seu parecer, o resultado da apreciação e a votação realizada.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<ResultadoEventosPauta?> getEventosPauta(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getEventosPautaWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventosPauta',) as ResultadoEventosPauta;
    
    }
    return null;
  }

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesEventoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/eventos/codSituacaoEvento';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  Future<ResultadoReferencias?> getSituacoesEvento({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesEventoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesEvento1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/situacoesEvento';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  Future<ResultadoReferencias?> getSituacoesEvento1({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesEvento1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposEventoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposEvento';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  Future<ResultadoReferencias?> getTiposEvento({ Future<void>? abortTrigger, }) async {
    final response = await getTiposEventoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposEvento1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/eventos/codTipoEvento';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  Future<ResultadoReferencias?> getTiposEvento1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposEvento1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Lista de órgãos organizadores do evento `{id}`
  ///
  /// Retorna uma lista em que cada item é um conjunto mínimo de dados sobre o(s) órgão(s) responsável(veis) pelo evento identificado por `{id}`. Atualmente, mas _provisoriamente_, esta informação já vem incorporada ao retorno de `/eventos/{id}`, mas este _endpoint_ facilita a importação destes dados em planilhas eletrônicas.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<Response> obterOrgaosDoEventoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos/{id}/orgaos'
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

  /// Lista de órgãos organizadores do evento `{id}`
  ///
  /// Retorna uma lista em que cada item é um conjunto mínimo de dados sobre o(s) órgão(s) responsável(veis) pelo evento identificado por `{id}`. Atualmente, mas _provisoriamente_, esta informação já vem incorporada ao retorno de `/eventos/{id}`, mas este _endpoint_ facilita a importação destes dados em planilhas eletrônicas.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<ResultadoEventoOrgao?> obterOrgaosDoEvento(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterOrgaosDoEventoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventoOrgao',) as ResultadoEventoOrgao;
    
    }
    return null;
  }

  /// Informações detalhadas de votações sobre um evento específico
  ///
  /// Retorna uma lista de dados básicos sobre votações que tenham sido realizadas no evento identificado por `{id}`. Votações só ocorrem em eventos de caráter deliberativo. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do evento do qual se deseja informações
  ///
  /// * [String] accept:
  Future<Response> obterVotacoesPorEventoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/eventos/{id}/votacoes'
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

  /// Informações detalhadas de votações sobre um evento específico
  ///
  /// Retorna uma lista de dados básicos sobre votações que tenham sido realizadas no evento identificado por `{id}`. Votações só ocorrem em eventos de caráter deliberativo. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do evento do qual se deseja informações
  ///
  /// * [String] accept:
  Future<ResultadoVotacoes?> obterVotacoesPorEvento(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterVotacoesPorEventoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoVotacoes',) as ResultadoVotacoes;
    
    }
    return null;
  }
}
