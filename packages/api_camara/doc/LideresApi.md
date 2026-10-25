# api_camara.api.LideresApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**obterLideres**](LideresApi.md#obterlideres) | **GET** /partidos/{id}/lideres | Deputados que são ou foram líderes ou vice-líderes de um partido
[**obterLideres1**](LideresApi.md#obterlideres1) | **GET** /legislaturas/{id}/lideres | Lista de líderes, vice-líderes e representantes na legislatura


# **obterLideres**
> ResultadoPartidosIDLideresVice obterLideres(id, pagina, itens, accept)

Deputados que são ou foram líderes ou vice-líderes de um partido

Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = LideresApi();
final id = 789; // int | ID do partido do qual se deseja os dados.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterLideres(id, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling LideresApi->obterLideres: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID do partido do qual se deseja os dados. | 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoPartidosIDLideresVice**](ResultadoPartidosIDLideresVice.md)

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

final api_instance = LideresApi();
final id = []; // List<String> | Número da legislatura da qual se deseja os dados.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterLideres1(id, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling LideresApi->obterLideres1: $e\n');
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

