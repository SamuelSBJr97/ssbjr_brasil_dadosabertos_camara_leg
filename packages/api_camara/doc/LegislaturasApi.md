# api_camara.api.LegislaturasApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLegislatura**](LegislaturasApi.md#getlegislatura) | **GET** /legislaturas | Os períodos de mandatos e atividades parlamentares da Câmara
[**obterLideres1**](LegislaturasApi.md#obterlideres1) | **GET** /legislaturas/{id}/lideres | Lista de líderes, vice-líderes e representantes na legislatura
[**obterMesaPorId**](LegislaturasApi.md#obtermesaporid) | **GET** /legislaturas/{id}/mesa | Quais deputados fizeram parte da Mesa Diretora em uma legislatura
[**obterPorId1**](LegislaturasApi.md#obterporid1) | **GET** /legislaturas/{id} | Informações extras sobre uma determinada legislatura da Câmara


# **getLegislatura**
> ResultadoLegislaturas getLegislatura(id, data, pagina, itens, ordem, ordenarPor, accept)

Os períodos de mandatos e atividades parlamentares da Câmara

Legislatura é o nome dado ao período de trabalhos parlamentares entre uma eleição e outra.  Este serviço retorna uma lista em que cada item contém as informações básicas sobre um desses períodos.  Os números que identificam as legislaturas são sequenciais, desde a primeira que ocorreu.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = LegislaturasApi();
final id = []; // List<String> | Um ou mais número(s) de legislatura(s), separados por vírgulas. Se omitido, serão retornados dados sobre todas as legislaturas.
final data = data_example; // String | Uma ou mais data(s) no formato `AAAA-MM-DD`, separadas por vírgulas. Se este parâmetro estiver presente, a requisição retornará as informações básicas sobre as legislaturas que estavam em curso nas datas informadas.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
final accept = accept_example; // String | 

try {
    final result = api_instance.getLegislatura(id, data, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling LegislaturasApi->getLegislatura: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Um ou mais número(s) de legislatura(s), separados por vírgulas. Se omitido, serão retornados dados sobre todas as legislaturas. | [optional] [default to const []]
 **data** | **String**| Uma ou mais data(s) no formato `AAAA-MM-DD`, separadas por vírgulas. Se este parâmetro estiver presente, a requisição retornará as informações básicas sobre as legislaturas que estavam em curso nas datas informadas. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'DESC']
 **ordenarPor** | **String**| Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista. | [optional] [default to 'id']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoLegislaturas**](ResultadoLegislaturas.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterLideres1**
> ResultadoLegislaturaIDLideres obterLideres1(id, pagina, itens, accept)

Lista de líderes, vice-líderes e representantes na legislatura

Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura `{id}`. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = LegislaturasApi();
final id = []; // List<String> | Número da legislatura da qual se deseja os dados.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterLideres1(id, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling LegislaturasApi->obterLideres1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Número da legislatura da qual se deseja os dados. | [default to const []]
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoLegislaturaIDLideres**](ResultadoLegislaturaIDLideres.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterMesaPorId**
> ResultadoLegislaturaIDMesa obterMesaPorId(id, dataInicio, dataFim, accept)

Quais deputados fizeram parte da Mesa Diretora em uma legislatura

Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por `{id}`.  Normalmente, cada legislatura tem duas Mesas Diretoras, com presidente, dois vice-presidentes, quatro secretários parlamentares e os suplentes dos secretários.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = LegislaturasApi();
final id = 789; // int | Número da legislatura da qual se deseja os dados.
final dataInicio = dataInicio_example; // String | Dia de início do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterMesaPorId(id, dataInicio, dataFim, accept);
    print(result);
} catch (e) {
    print('Exception when calling LegislaturasApi->obterMesaPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número da legislatura da qual se deseja os dados. | 
 **dataInicio** | **String**| Dia de início do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoLegislaturaIDMesa**](ResultadoLegislaturaIDMesa.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterPorId1**
> ResultadoLegislaturasDetalhe obterPorId1(id, accept)

Informações extras sobre uma determinada legislatura da Câmara

Retorna informações adicionais sobre o período de atividades da Câmara identificado por `{id}`. 

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = LegislaturasApi();
final id = 789; // int | Número da legislatura da qual se quer os dados.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterPorId1(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling LegislaturasApi->obterPorId1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número da legislatura da qual se quer os dados. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoLegislaturasDetalhe**](ResultadoLegislaturasDetalhe.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

