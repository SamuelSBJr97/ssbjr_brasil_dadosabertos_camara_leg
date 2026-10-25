# api_camara.api.PartidosApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMembros**](PartidosApi.md#getmembros) | **GET** /partidos/{id}/membros | Uma lista dos parlamentares de um partido durante um período
[**getPartido**](PartidosApi.md#getpartido) | **GET** /partidos/{id} | Informações detalhadas sobre um partido
[**listarPartidos**](PartidosApi.md#listarpartidos) | **GET** /partidos | Os partidos políticos que têm ou já tiveram parlamentares em exercício na Câmara
[**obterLideres**](PartidosApi.md#obterlideres) | **GET** /partidos/{id}/lideres | Deputados que são ou foram líderes ou vice-líderes de um partido


# **getMembros**
> ResultadoPartidosIDMembros getMembros(id, dataInicio, dataFim, idLegislatura, ordenarPor, ordem, itens, pagina, accept)

Uma lista dos parlamentares de um partido durante um período

Retorna uma lista de deputados que estão ou estiveram em exercício pelo partido `{id}`.  Opcionalmente, pode-se usar os parâmetros `dataInicio`, `dataFim` ou `idLegislatura` para se obter uma lista de deputados filiados ao partido num certo intervalo de tempo. Isso é equivalente ao serviço `/deputados` com filtro por partido, mas é melhor para obter informações sobre membros de partidos já extintos.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = PartidosApi();
final id = 789; // int | Id do Partido
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final idLegislatura = []; // Set<int> | Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `id`, `nome`, `siglaUf`
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final accept = accept_example; // String | 

try {
    final result = api_instance.getMembros(id, dataInicio, dataFim, idLegislatura, ordenarPor, ordem, itens, pagina, accept);
    print(result);
} catch (e) {
    print('Exception when calling PartidosApi->getMembros: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id do Partido | 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **idLegislatura** | [**Set<int>**](int.md)| Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder. | [optional] [default to const {}]
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `id`, `nome`, `siglaUf` | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoPartidosIDMembros**](ResultadoPartidosIDMembros.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPartido**
> ResultadoPartidosID getPartido(id, accept)

Informações detalhadas sobre um partido

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = PartidosApi();
final id = 789; // int | Id do Partido
final accept = accept_example; // String | 

try {
    final result = api_instance.getPartido(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling PartidosApi->getPartido: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id do Partido | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoPartidosID**](ResultadoPartidosID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listarPartidos**
> ResultadoPartidos listarPartidos(sigla, idLegislatura, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Os partidos políticos que têm ou já tiveram parlamentares em exercício na Câmara

Retorna uma lista de dados básicos sobre os partidos políticos que têm ou já tiveram deputados na Câmara. Se não forem passados parâmetros, o serviço retorna os partidos que têm deputados em exercício no momento da requisição.  É possível obter uma lista de partidos representados na Câmara em um certo intervalo de datas ou de legislaturas. Se um intervalo e uma ou mais legislatura(s) não coincidentes forem passados, todos os intervalos de tempo serão somados.  Também se pode fazer busca por uma ou mais sigla(s), mas atenção: em diferentes legislaturas, pode haver mais de um partido usando a mesma sigla.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = PartidosApi();
final sigla = []; // List<String> | Sigla de um ou mais partido(s), separadas por vírgulas.
final idLegislatura = []; // List<String> | Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista deve ser ordenada: `id`, `sigla`, `nome`, `dataInicio` ou `dataFim`
final accept = accept_example; // String | 

try {
    final result = api_instance.listarPartidos(sigla, idLegislatura, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling PartidosApi->listarPartidos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sigla** | [**List<String>**](String.md)| Sigla de um ou mais partido(s), separadas por vírgulas. | [optional] [default to const []]
 **idLegislatura** | [**List<String>**](String.md)| Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder. | [optional] [default to const []]
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista deve ser ordenada: `id`, `sigla`, `nome`, `dataInicio` ou `dataFim` | [optional] [default to 'sigla']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoPartidos**](ResultadoPartidos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterLideres**
> ResultadoPartidosIDLideresVice obterLideres(id, pagina, itens, accept)

Deputados que são ou foram líderes ou vice-líderes de um partido

Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = PartidosApi();
final id = 789; // int | ID do partido do qual se deseja os dados.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterLideres(id, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling PartidosApi->obterLideres: $e\n');
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

