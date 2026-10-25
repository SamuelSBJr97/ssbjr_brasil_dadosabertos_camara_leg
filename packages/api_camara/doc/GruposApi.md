# api_camara.api.GruposApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**grupos**](GruposApi.md#grupos) | **GET** /grupos | Os grupos de cooperação entre parlamentares brasileiros e de outros países
[**historico**](GruposApi.md#historico) | **GET** /grupos/{id}/historico | As variações de estado que um grupo parlamentar teve ao longo do tempo
[**membros**](GruposApi.md#membros) | **GET** /grupos/{id}/membros | Lista de parlamentares integrantes de um grupo interparlamentar
[**obterGruposID**](GruposApi.md#obtergruposid) | **GET** /grupos/{id} | Informações detalhadas sobre um determinado grupo interparlamentar


# **grupos**
> ResultadoGrupos grupos(pagina, itens, ordem, ordenarPor, accept)

Os grupos de cooperação entre parlamentares brasileiros e de outros países

Este endpoint retorna uma lista em que cada item representa um dos grupos interparlamentares em que a Câmara teve representantes. As informações incluem nome, a resolução que criou o grupo e seu ano de publicação, e as mais recentes informações sobre situação, presidente e ofício de instalação.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = GruposApi();
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `id`, `idLegislatura`.
final accept = accept_example; // String | 

try {
    final result = api_instance.grupos(pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling GruposApi->grupos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `id`, `idLegislatura`. | [optional] [default to 'id']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoGrupos**](ResultadoGrupos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historico**
> ResultadoGruposHistorico historico(id, accept)

As variações de estado que um grupo parlamentar teve ao longo do tempo

Uma lista contendo todos os \"retratos\" das informações sujeitas a mudanças sobre o grupo parlamentar identificado por `{id}` &mdash; por exemplo, todos os ofícios de instalação dos grupos apresentados a cada legislatura desde sua criação, e eventuais substituições de presidentes.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = GruposApi();
final id = 789; // int | Identificador numérico de Grupo histórico.
final accept = accept_example; // String | 

try {
    final result = api_instance.historico(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling GruposApi->historico: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico de Grupo histórico. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoGruposHistorico**](ResultadoGruposHistorico.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **membros**
> ResultadoGruposMembros membros(id, dataInicio, dataFim, ordem, ordenarPor, accept)

Lista de parlamentares integrantes de um grupo interparlamentar

Retorna uma lista de deputados ou senadores que são ou foram participantes do grupo interparlamentar identificado por `{id}`. Podem ser utilizados os parâmetros `dataInicio` e/ou `dataFim` para definir de qual período se deseja saber quem foram os participantes.  Se nenhum parâmetro de tempo for utilizado, são retornados os integrantes registrados no momento da requisição (inclusive deputados e senadores que podem não estar em exercício). A lista será vazia se o grupo `{id}` ainda não tiver sido instalado na legislatura atual.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = GruposApi();
final id = 789; // int | Número(s) identificador(es) de um Membro.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `idLegislatura`.
final accept = accept_example; // String | 

try {
    final result = api_instance.membros(id, dataInicio, dataFim, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling GruposApi->membros: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número(s) identificador(es) de um Membro. | 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `idLegislatura`. | [optional] [default to 'idLegislatura']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoGruposMembros**](ResultadoGruposMembros.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterGruposID**
> ResultadoGruposID obterGruposID(id, accept)

Informações detalhadas sobre um determinado grupo interparlamentar

Todo o conjunto de informações disponíveis sobre o grupo parlamentar identificado por `{id}`. Além dos retornados por `/grupos`, há dados sobre o projeto de resolução que levou à criação do grupo, identificadores do mais recente documento e/ou ofício de instalação do grupo, datas de sua apresentação e de sua publicação, e identificação do autor do ofício.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = GruposApi();
final id = 789; // int | Número identificador do Grupo.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterGruposID(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling GruposApi->obterGruposID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número identificador do Grupo. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoGruposID**](ResultadoGruposID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

