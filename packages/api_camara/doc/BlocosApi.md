# api_camara.api.BlocosApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlocos**](BlocosApi.md#getblocos) | **GET** /blocos | Lista de dados sobre os blocos partidários
[**obterBlocoID**](BlocosApi.md#obterblocoid) | **GET** /blocos/{id} | Informações sobre um bloco partidário específico
[**obterBlocoIDPartidos**](BlocosApi.md#obterblocoidpartidos) | **GET** /blocos/{id}/partidos | Lista de partidos do bloco.


# **getBlocos**
> ResultadoBloco getBlocos(id, idLegislatura, pagina, itens, ordem, ordenarPor, accept)

Lista de dados sobre os blocos partidários

Nas atividades parlamentares, partidos podem se juntar em __blocos partidários__. Quando associados, os partidos passam a trabalhar como se fossem um \"partidão\", com um só líder e um mesmo conjunto de vice-líderes.  Os blocos só podem existir até o fim da legislatura em que foram criados: na legislatura seguinte, os mesmos partidos, se associados, formam um novo bloco.  Este recurso é uma lista dos blocos em atividade no momento da requisição. Se forem passados números de legislaturas com o parâmetro _idLegislatura_, são listados também os blocos formados e extintos nessas legislaturas.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = BlocosApi();
final id = []; // List<String> | Número(s) identificador(es) de um ou mais bloco(s), separados por vírgulas.
final idLegislatura = []; // List<String> | Número(s) identificador(es) de uma ou mais legislatura(s), separados por vírgulas. Se presente, faz com que sejam retornados todos os blocos que existiram nessa(s) legislatura(s).
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `idLegislatura`, `id` ou `nome`.
final accept = accept_example; // String | 

try {
    final result = api_instance.getBlocos(id, idLegislatura, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling BlocosApi->getBlocos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Número(s) identificador(es) de um ou mais bloco(s), separados por vírgulas. | [optional] [default to const []]
 **idLegislatura** | [**List<String>**](String.md)| Número(s) identificador(es) de uma ou mais legislatura(s), separados por vírgulas. Se presente, faz com que sejam retornados todos os blocos que existiram nessa(s) legislatura(s). | [optional] [default to const []]
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `idLegislatura`, `id` ou `nome`. | [optional] [default to 'nome']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoBloco**](ResultadoBloco.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterBlocoID**
> ResultadoBloco obterBlocoID(id, accept)

Informações sobre um bloco partidário específico

Retorna informações sobre o bloco identificado por `{id}` além daquelas obtidas na listagem.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = BlocosApi();
final id = 789; // int | Número identificador do bloco de partidos.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterBlocoID(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling BlocosApi->obterBlocoID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número identificador do bloco de partidos. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoBloco**](ResultadoBloco.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterBlocoIDPartidos**
> ResultadoBloco obterBlocoIDPartidos(id, data, accept)

Lista de partidos do bloco.

Lista em que cada item contém os identificadores básicos de cada partido integrante do bloco identificado por {id}.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = BlocosApi();
final id = 789; // int | Número identificador do bloco de partidos.
final data = data_example; // String | Data e hora, em formato `AAAA-MM-DDTHH:mm`, na qual se deseja saber os partidos que faziam parte do bloco `{id}`. Se omitida, é retornada a composição no momento da requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterBlocoIDPartidos(id, data, accept);
    print(result);
} catch (e) {
    print('Exception when calling BlocosApi->obterBlocoIDPartidos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Número identificador do bloco de partidos. | 
 **data** | **String**| Data e hora, em formato `AAAA-MM-DDTHH:mm`, na qual se deseja saber os partidos que faziam parte do bloco `{id}`. Se omitida, é retornada a composição no momento da requisição. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoBloco**](ResultadoBloco.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

