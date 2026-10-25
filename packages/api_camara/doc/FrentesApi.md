# api_camara.api.FrentesApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buscar**](FrentesApi.md#buscar) | **GET** /frentes | Lista de frentes parlamentares de uma ou mais legislaturas
[**obterDeputadoID**](FrentesApi.md#obterdeputadoid) | **GET** /frentes/{id} | Informações detalhadas sobre uma frente parlamentar
[**obterMembro**](FrentesApi.md#obtermembro) | **GET** /frentes/{id}/membros | Os deputados que participam de uma frente parlamentar


# **buscar**
> ResultadoFrentes buscar(idLegislatura, pagina, itens, accept)

Lista de frentes parlamentares de uma ou mais legislaturas

Retorna uma lista de informações sobre uma frente parlamentar - um agrupamento oficial de parlamentares em torno de um determinado tema ou proposta.  As frentes existem até o fim da legislatura em que foram criadas, e podem ser recriadas a cada legislatura. Algumas delas são compostas por deputados e senadores.  Um ou mais número de legislatura(s) pode(m) ser passado(s) como parâmetro, mas se for omitido são retornadas todas as frentes parlamentares criadas desde 2003.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = FrentesApi();
final idLegislatura = []; // List<String> | Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.buscar(idLegislatura, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling FrentesApi->buscar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idLegislatura** | [**List<String>**](String.md)| Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder. | [optional] [default to const []]
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoFrentes**](ResultadoFrentes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterDeputadoID**
> ResultadoFrenteID obterDeputadoID(id, accept)

Informações detalhadas sobre uma frente parlamentar

Este recurso traz informações detalhadas sobre a frente parlamentar identificada por `{id}`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = FrentesApi();
final id = 789; // int | Identificador numérico da frente parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterDeputadoID(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling FrentesApi->obterDeputadoID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico da frente parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoFrenteID**](ResultadoFrenteID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterMembro**
> ResultadoMembroFrente obterMembro(id, accept)

Os deputados que participam de uma frente parlamentar

Uma lista dos deputados participantes da frente parlamentar identificada por `{id}` e os papéis que exerceram nessa frente (signatário, coordenador ou presidente).  Observe que, mesmo no caso de frentes parlamentares mistas (compostas por deputados e senadores), são retornados apenas dados sobre os deputados.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = FrentesApi();
final id = 789; // int | O identificador numérico da entidade.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterMembro(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling FrentesApi->obterMembro: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico da entidade. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoMembroFrente**](ResultadoMembroFrente.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

