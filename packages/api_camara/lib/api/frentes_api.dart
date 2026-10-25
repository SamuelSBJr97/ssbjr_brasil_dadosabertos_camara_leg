//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FrentesApi {
  FrentesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lista de frentes parlamentares de uma ou mais legislaturas
  ///
  /// Retorna uma lista de informações sobre uma frente parlamentar - um agrupamento oficial de parlamentares em torno de um determinado tema ou proposta.  As frentes existem até o fim da legislatura em que foram criadas, e podem ser recriadas a cada legislatura. Algumas delas são compostas por deputados e senadores.  Um ou mais número de legislatura(s) pode(m) ser passado(s) como parâmetro, mas se for omitido são retornadas todas as frentes parlamentares criadas desde 2003.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<Response> buscarWithHttpInfo({ List<String>? idLegislatura, int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/frentes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
    }
    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
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

  /// Lista de frentes parlamentares de uma ou mais legislaturas
  ///
  /// Retorna uma lista de informações sobre uma frente parlamentar - um agrupamento oficial de parlamentares em torno de um determinado tema ou proposta.  As frentes existem até o fim da legislatura em que foram criadas, e podem ser recriadas a cada legislatura. Algumas delas são compostas por deputados e senadores.  Um ou mais número de legislatura(s) pode(m) ser passado(s) como parâmetro, mas se for omitido são retornadas todas as frentes parlamentares criadas desde 2003.
  ///
  /// Parameters:
  ///
  /// * [List<String>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<ResultadoFrentes?> buscar({ List<String>? idLegislatura, int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    final response = await buscarWithHttpInfo(idLegislatura: idLegislatura, pagina: pagina, itens: itens, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoFrentes',) as ResultadoFrentes;
    
    }
    return null;
  }

  /// Informações detalhadas sobre uma frente parlamentar
  ///
  /// Este recurso traz informações detalhadas sobre a frente parlamentar identificada por `{id}`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da frente parlamentar.
  ///
  /// * [String] accept:
  Future<Response> obterDeputadoIDWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/frentes/{id}'
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

  /// Informações detalhadas sobre uma frente parlamentar
  ///
  /// Este recurso traz informações detalhadas sobre a frente parlamentar identificada por `{id}`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da frente parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoFrenteID?> obterDeputadoID(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterDeputadoIDWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoFrenteID',) as ResultadoFrenteID;
    
    }
    return null;
  }

  /// Os deputados que participam de uma frente parlamentar
  ///
  /// Uma lista dos deputados participantes da frente parlamentar identificada por `{id}` e os papéis que exerceram nessa frente (signatário, coordenador ou presidente).  Observe que, mesmo no caso de frentes parlamentares mistas (compostas por deputados e senadores), são retornados apenas dados sobre os deputados.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<Response> obterMembroWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/frentes/{id}/membros'
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

  /// Os deputados que participam de uma frente parlamentar
  ///
  /// Uma lista dos deputados participantes da frente parlamentar identificada por `{id}` e os papéis que exerceram nessa frente (signatário, coordenador ou presidente).  Observe que, mesmo no caso de frentes parlamentares mistas (compostas por deputados e senadores), são retornados apenas dados sobre os deputados.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<ResultadoMembroFrente?> obterMembro(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterMembroWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoMembroFrente',) as ResultadoMembroFrente;
    
    }
    return null;
  }
}
