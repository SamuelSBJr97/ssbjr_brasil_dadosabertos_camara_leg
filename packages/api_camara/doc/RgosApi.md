# api_camara.api.RgosApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrgaoDetalhe**](RgosApi.md#getorgaodetalhe) | **GET** /orgaos/{id} | Informações detalhadas sobre um órgão da Câmara
[**getOrgaoEventosDetalhe**](RgosApi.md#getorgaoeventosdetalhe) | **GET** /orgaos/{id}/eventos | Os eventos ocorridos ou previstos em um órgão legislativo
[**getOrgaoMembros**](RgosApi.md#getorgaomembros) | **GET** /orgaos/{id}/membros | Lista de cargos de um órgão e parlamentares que os ocupam.
[**getSituacoesOrgao**](RgosApi.md#getsituacoesorgao) | **GET** /referencias/orgaos/codSituacao | As situações em que órgãos podem se encontrar
[**getSituacoesOrgao1**](RgosApi.md#getsituacoesorgao1) | **GET** /referencias/situacoesOrgao | As situações em que órgãos podem se encontrar
[**getVotacoesPorOrgao**](RgosApi.md#getvotacoespororgao) | **GET** /orgaos/{id}/votacoes | Informações detalhadas sobre votações de um órgão da Câmara
[**listar1**](RgosApi.md#listar1) | **GET** /orgaos | A lista das comissões e outros órgãos legislativos da Câmara


# **getOrgaoDetalhe**
> ResultadoOrgaoDetalhe getOrgaoDetalhe(id, accept)

Informações detalhadas sobre um órgão da Câmara

Retorna todas as informações disponíveis sobre o órgão da Câmara identificado por `id`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();
final id = 789; // int | Identificador numérico do órgão
final accept = accept_example; // String | 

try {
    final result = api_instance.getOrgaoDetalhe(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getOrgaoDetalhe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do órgão | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoOrgaoDetalhe**](ResultadoOrgaoDetalhe.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgaoEventosDetalhe**
> ResultadoOrgaoEventos getOrgaoEventosDetalhe(id, idTipoEvento, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Os eventos ocorridos ou previstos em um órgão legislativo

Retorna uma lista de informações resumidas dos eventos realizados (ou a realizar) pelo órgão legislativo identificado por `{id}`. Por padrão, são retornados eventos em andamento ou previstos para o mesmo dia, dois dias antes e dois dias depois da requisição. Parâmetros podem ser passados para alterar esse período, bem como os tipos de eventos.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();
final id = 789; // int | Identificador numérico do órgão
final idTipoEvento = []; // List<String> | Um ou mais identificador(es) numérico(s) de tipos de evento que se deseja obter. os valores válidos podem ser obtidos por uma requisição anterior a `/referencias/tiposEvento`.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
final accept = accept_example; // String | 

try {
    final result = api_instance.getOrgaoEventosDetalhe(id, idTipoEvento, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getOrgaoEventosDetalhe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do órgão | 
 **idTipoEvento** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s) de tipos de evento que se deseja obter. os valores válidos podem ser obtidos por uma requisição anterior a `/referencias/tiposEvento`. | [optional] [default to const []]
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista. | [optional] [default to 'dataHoraInicio']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoOrgaoEventos**](ResultadoOrgaoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgaoMembros**
> ResultadoOrgaoMembros getOrgaoMembros(id, dataInicio, dataFim, pagina, itens, accept)

Lista de cargos de um órgão e parlamentares que os ocupam.

Retorna uma lista de dados resumidos que identificam cada parlamentar e o cargo ou posição que ocupa ou ocupou no órgão parlamentar identificado por `{id}` durante um certo período de tempo. Se não forem passados parâmetros que delimitem esse período, o serviço retorna os membros do órgão no momento da requisição. Se o órgão não existir mais ou não estiver instalado, é retornada uma lista vazia.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();
final id = 789; // int | Identificador numérico do órgão
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato AAAA-MM-DD.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato AAAA-MM-DD.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.getOrgaoMembros(id, dataInicio, dataFim, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getOrgaoMembros: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do órgão | 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato AAAA-MM-DD. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato AAAA-MM-DD. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoOrgaoMembros**](ResultadoOrgaoMembros.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSituacoesOrgao**
> ResultadoReferencias getSituacoesOrgao()

As situações em que órgãos podem se encontrar

Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();

try {
    final result = api_instance.getSituacoesOrgao();
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getSituacoesOrgao: $e\n');
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

# **getSituacoesOrgao1**
> ResultadoReferencias getSituacoesOrgao1()

As situações em que órgãos podem se encontrar

Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();

try {
    final result = api_instance.getSituacoesOrgao1();
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getSituacoesOrgao1: $e\n');
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

# **getVotacoesPorOrgao**
> ResultadoVotacoes getVotacoesPorOrgao(id, idProposicao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Informações detalhadas sobre votações de um órgão da Câmara

Retorna uma lista de dados básicos de votações que tenham sido realizadas em eventos realizados no órgão `{id}`.  Se `{id}` for um órgão permanente da Câmara, são retornados, por padrão, dados sobre as votações realizadas pelo órgão nos últimos 30 dias. Esse período pode ser alterado com o uso dos parâmetros `dataInicio` e/ou `dataFim`, que por enquanto são limitados a selecionar somente votações ocorridas em um mesmo ano.  Caso `{id}` seja um órgão temporário, como uma comissão especial, são listadas por padrão todas as votações ocorridas no órgão, em qualquer período de tempo.  Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();
final id = 789; // int | Identificador numérico do órgão
final idProposicao = []; // List<String> | Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
final dataInicio = dataInicio_example; // String | Data em formato `AAAA-MM-DD` para início do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas votações ocorridas dessa data até o fim do mesmo ano. Se usado com `dataFim`, as duas datas devem ser de um mesmo ano.
final dataFim = dataFim_example; // String | Data em formato `AAAA-MM-DD` que define o fim do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas todas as votações ocorridas desde 1º de janeiro do mesmo ano até esta data. Se usado com `dataInicio`, é preciso que as duas datas sejam de um mesmo ano.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição. O valor padrão e máximo para este endpoint é 100, e valores maiores serão ignorados.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada. Pode ser `id`, `idOrgao`, `siglaOrgao`, `idEvento`, `idProposicao`, `data`, `dataHoraRegistro` ou `idProposicaoObjeto`.
final accept = accept_example; // String | 

try {
    final result = api_instance.getVotacoesPorOrgao(id, idProposicao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->getVotacoesPorOrgao: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do órgão | 
 **idProposicao** | [**List<String>**](String.md)| Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas. | [optional] [default to const []]
 **dataInicio** | **String**| Data em formato `AAAA-MM-DD` para início do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas votações ocorridas dessa data até o fim do mesmo ano. Se usado com `dataFim`, as duas datas devem ser de um mesmo ano. | [optional] 
 **dataFim** | **String**| Data em formato `AAAA-MM-DD` que define o fim do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas todas as votações ocorridas desde 1º de janeiro do mesmo ano até esta data. Se usado com `dataInicio`, é preciso que as duas datas sejam de um mesmo ano. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. O valor padrão e máximo para este endpoint é 100, e valores maiores serão ignorados. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'DESC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada. Pode ser `id`, `idOrgao`, `siglaOrgao`, `idEvento`, `idProposicao`, `data`, `dataHoraRegistro` ou `idProposicaoObjeto`. | [optional] [default to 'dataHoraRegistro']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoes**](ResultadoVotacoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listar1**
> ResultadoOrgaos listar1(id, sigla, codTipoOrgao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

A lista das comissões e outros órgãos legislativos da Câmara

Retorna uma lista de informações básicas sobre os órgãos legislativos e seus identificadores, tipos e descrições.  Pela query string é possível filtrar a lista por identificadores, tipos de órgãos, sigla, situação do órgão ou período de tempo em que os órgãos estiveram ativos, se aplicável.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RgosApi();
final id = []; // List<String> | Um ou mais identificador(es) numérico(s), separados por vírgulas.
final sigla = []; // List<String> | Uma ou mais sigla(s) oficialmente usadas para designar um ou mais órgão(s) da Câmara, separadas por vírgulas.
final codTipoOrgao = []; // List<String> | Um ou mais identificador(es) numérico(s) do(s) tipo(s) de órgãos que se deseja buscar dados. Pode(m) ser obtido(s) em `/referencias/orgaos/codTipoOrgao`.
final dataInicio = dataInicio_example; // String | Data de início, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
final dataFim = dataFim_example; // String | Data de término, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `id`, `sigla`, `nome`, `apelido`, `codTipoOrgao`, `tipoOrgao`, `dataInicio` ou `dataFim`
final accept = accept_example; // String | 

try {
    final result = api_instance.listar1(id, sigla, codTipoOrgao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling RgosApi->listar1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s), separados por vírgulas. | [optional] [default to const []]
 **sigla** | [**List<String>**](String.md)| Uma ou mais sigla(s) oficialmente usadas para designar um ou mais órgão(s) da Câmara, separadas por vírgulas. | [optional] [default to const []]
 **codTipoOrgao** | [**List<String>**](String.md)| Um ou mais identificador(es) numérico(s) do(s) tipo(s) de órgãos que se deseja buscar dados. Pode(m) ser obtido(s) em `/referencias/orgaos/codTipoOrgao`. | [optional] [default to const []]
 **dataInicio** | **String**| Data de início, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade. | [optional] 
 **dataFim** | **String**| Data de término, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] [default to 100]
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `id`, `sigla`, `nome`, `apelido`, `codTipoOrgao`, `tipoOrgao`, `dataInicio` ou `dataFim` | [optional] [default to 'id']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoOrgaos**](ResultadoOrgaos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

