# api_camara.api.EventosApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEventos**](EventosApi.md#geteventos) | **GET** /eventos | Lista de eventos ocorridos ou previstos nos diversos órgãos da Câmara
[**getEventos1**](EventosApi.md#geteventos1) | **GET** /eventos/{id} | Informações detalhadas sobre um evento específico
[**getEventosDeputados**](EventosApi.md#geteventosdeputados) | **GET** /eventos/{id}/deputados | Os deputados participantes de um evento específico
[**getEventosPauta**](EventosApi.md#geteventospauta) | **GET** /eventos/{id}/pauta | Lista de proposições que foram ou deverão ser avaliadas em um evento de caráter deliberativo
[**getSituacoesEvento**](EventosApi.md#getsituacoesevento) | **GET** /referencias/eventos/codSituacaoEvento | As possíveis situações para eventos
[**getSituacoesEvento1**](EventosApi.md#getsituacoesevento1) | **GET** /referencias/situacoesEvento | As possíveis situações para eventos
[**getTiposEvento**](EventosApi.md#gettiposevento) | **GET** /referencias/tiposEvento | Os tipos de eventos realizados na Câmara
[**getTiposEvento1**](EventosApi.md#gettiposevento1) | **GET** /referencias/eventos/codTipoEvento | Os tipos de eventos realizados na Câmara
[**obterOrgaosDoEvento**](EventosApi.md#obterorgaosdoevento) | **GET** /eventos/{id}/orgaos | Lista de órgãos organizadores do evento `{id}`
[**obterVotacoesPorEvento**](EventosApi.md#obtervotacoesporevento) | **GET** /eventos/{id}/votacoes | Informações detalhadas de votações sobre um evento específico


# **getEventos**
> ResultadoEventos getEventos(id, codTipoEvento, codSituacao, codTipoOrgao, idOrgao, dataInicio, dataFim, horaInicio, horaFim, pagina, itens, ordem, ordenarPor, accept)

Lista de eventos ocorridos ou previstos nos diversos órgãos da Câmara

Retorna uma lista cujos elementos trazem informações básicas sobre eventos dos órgãos legislativos da Câmara, previstos ou já ocorridos, em um certo intervalo de tempo.  Esse intervalo pode ser configurado pelos parâmetros de data e hora listados abaixo. Se nenhum for passado, são listados eventos dos cinco dias anteriores, dos cinco dias seguintes e do próprio dia em que é feita a requisição.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = []; // List<String> | Identificador(es) numérico(s) de um ou mais eventos, separados por vírgulas.
final codTipoEvento = []; // List<String> | Um ou mais identificador(es) numérico(s) do(s) tipo(s) de evento que se deseja obter. Os valores válidos podem ser obtidos por uma requisição a `/referencias/tiposEvento`.
final codSituacao = []; // List<String> | Um ou mais identificador(es) numéricos de tipo(s) de situação de evento, separados por vírgula. Valores válidos podem ser obtidos em `/referencias/situacoesEvento`.
final codTipoOrgao = []; // List<String> | Um ou mais identificador(es) numérico(s) de tipo(s) de órgão(s) realizadores dos eventos que se deseja obter, separados por vírgula. Os valores válidos podem ser obtidos em `/referencias/tiposOrgao`.
final idOrgao = []; // List<String> | Um ou mais identificador(es) numérico(s) de órgão(s), separados por vírgula. Os identificadores podem ser obtidos em uma requisição a `/orgaos`.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final horaInicio = horaInicio_example; // String | Hora inicial de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
final horaFim = horaFim_example; // String | Hora final de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista deve ser ordenada: `id`, `dataHoraInicio`, `dataHoraFim`, `descricaoSituacao`, `descricaoTipo` ou `titulo`
final accept = accept_example; // String | 

try {
    final result = api_instance.getEventos(id, codTipoEvento, codSituacao, codTipoOrgao, idOrgao, dataInicio, dataFim, horaInicio, horaFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getEventos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Identificador(es) numérico(s) de um ou mais eventos, separados por vírgulas. | [optional] [default to const []]
 **codTipoEvento** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s) do(s) tipo(s) de evento que se deseja obter. Os valores válidos podem ser obtidos por uma requisição a `/referencias/tiposEvento`. | [optional] [default to const []]
 **codSituacao** | [**List<String>**](String.md)| Um ou mais identificador(es) numéricos de tipo(s) de situação de evento, separados por vírgula. Valores válidos podem ser obtidos em `/referencias/situacoesEvento`. | [optional] [default to const []]
 **codTipoOrgao** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s) de tipo(s) de órgão(s) realizadores dos eventos que se deseja obter, separados por vírgula. Os valores válidos podem ser obtidos em `/referencias/tiposOrgao`. | [optional] [default to const []]
 **idOrgao** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s) de órgão(s), separados por vírgula. Os identificadores podem ser obtidos em uma requisição a `/orgaos`. | [optional] [default to const []]
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **horaInicio** | **String**| Hora inicial de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília. | [optional] 
 **horaFim** | **String**| Hora final de um intervalo de tempo, no formato `hh:mm`, em horário de Brasília. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista deve ser ordenada: `id`, `dataHoraInicio`, `dataHoraFim`, `descricaoSituacao`, `descricaoTipo` ou `titulo` | [optional] [default to 'dataHoraInicio']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventos1**
> ResultadoEventosID getEventos1(id, accept)

Informações detalhadas sobre um evento específico

Retorna um conjunto detalhado de informações sobre o evento da Câmara identificado por `id`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = 789; // int | O identificador numérico do evento do qual se deseja informações
final accept = accept_example; // String | 

try {
    final result = api_instance.getEventos1(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getEventos1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do evento do qual se deseja informações | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoEventosID**](ResultadoEventosID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventosDeputados**
> ResultadoEventosDeputado getEventosDeputados(id, accept)

Os deputados participantes de um evento específico

Retorna uma lista de dados resumidos sobre deputados participantes do evento identificado por `{id}`. Se o evento já ocorreu, a lista identifica os deputados que efetivamente registraram presença no evento. Se o evento ainda não ocorreu, a lista mostra os deputados que _devem_ participar do evento, por serem convidados ou por serem membros do(s) órgão(s) responsável pelo evento.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = 789; // int | O identificador numérico da entidade.
final accept = accept_example; // String | 

try {
    final result = api_instance.getEventosDeputados(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getEventosDeputados: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico da entidade. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoEventosDeputado**](ResultadoEventosDeputado.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventosPauta**
> ResultadoEventosPauta getEventosPauta(id, accept)

Lista de proposições que foram ou deverão ser avaliadas em um evento de caráter deliberativo

Se o evento `{id}` for de caráter deliberativo (uma reunião ordinária, por exemplo) este serviço retorna a lista de proposições previstas para avaliação pelos parlamentares. Cada item identifica, se as informações estiverem disponíveis, a proposição avaliada, o regime de preferência para avaliação, o relator e seu parecer, o resultado da apreciação e a votação realizada.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = 789; // int | O identificador numérico da entidade.
final accept = accept_example; // String | 

try {
    final result = api_instance.getEventosPauta(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getEventosPauta: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico da entidade. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoEventosPauta**](ResultadoEventosPauta.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSituacoesEvento**
> ResultadoReferencias getSituacoesEvento()

As possíveis situações para eventos

Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();

try {
    final result = api_instance.getSituacoesEvento();
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getSituacoesEvento: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoReferencias**](ResultadoReferencias.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSituacoesEvento1**
> ResultadoReferencias getSituacoesEvento1()

As possíveis situações para eventos

Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();

try {
    final result = api_instance.getSituacoesEvento1();
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getSituacoesEvento1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoReferencias**](ResultadoReferencias.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposEvento**
> ResultadoReferencias getTiposEvento()

Os tipos de eventos realizados na Câmara

Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();

try {
    final result = api_instance.getTiposEvento();
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getTiposEvento: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoReferencias**](ResultadoReferencias.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposEvento1**
> ResultadoReferencias getTiposEvento1()

Os tipos de eventos realizados na Câmara

Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();

try {
    final result = api_instance.getTiposEvento1();
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->getTiposEvento1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoReferencias**](ResultadoReferencias.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterOrgaosDoEvento**
> ResultadoEventoOrgao obterOrgaosDoEvento(id, accept)

Lista de órgãos organizadores do evento `{id}`

Retorna uma lista em que cada item é um conjunto mínimo de dados sobre o(s) órgão(s) responsável(veis) pelo evento identificado por `{id}`. Atualmente, mas _provisoriamente_, esta informação já vem incorporada ao retorno de `/eventos/{id}`, mas este _endpoint_ facilita a importação destes dados em planilhas eletrônicas.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = 789; // int | O identificador numérico da entidade.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterOrgaosDoEvento(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->obterOrgaosDoEvento: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico da entidade. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoEventoOrgao**](ResultadoEventoOrgao.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterVotacoesPorEvento**
> ResultadoVotacoes obterVotacoesPorEvento(id, accept)

Informações detalhadas de votações sobre um evento específico

Retorna uma lista de dados básicos sobre votações que tenham sido realizadas no evento identificado por `{id}`. Votações só ocorrem em eventos de caráter deliberativo. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = EventosApi();
final id = 789; // int | O identificador numérico do evento do qual se deseja informações
final accept = accept_example; // String | 

try {
    final result = api_instance.obterVotacoesPorEvento(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling EventosApi->obterVotacoesPorEvento: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do evento do qual se deseja informações | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoes**](ResultadoVotacoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

