# api_camara.api.VotaesApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVotacaoID**](VotaesApi.md#getvotacaoid) | **GET** /votacoes/{id} | Informações detalhadas sobre uma votação da Câmara
[**getVotacaoIDOrientacoes**](VotaesApi.md#getvotacaoidorientacoes) | **GET** /votacoes/{id}/orientacoes | O voto recomendado pelas lideranças aos seus deputados em uma votação.
[**getVotacaoVotosPorId**](VotaesApi.md#getvotacaovotosporid) | **GET** /votacoes/{id}/votos | Como cada parlamentar votou em uma votação nominal e aberta
[**listar**](VotaesApi.md#listar) | **GET** /votacoes | Lista das votações da Câmara


# **getVotacaoID**
> ResultadoVotacoesID getVotacaoID(id, accept)

Informações detalhadas sobre uma votação da Câmara

Retorna um conjunto detalhado de dados sobre a votação identificada por `{id}`, tais como as proposições que podem ter sido o objeto da votação e os efeitos de tramitação de outras proposições que eventualmente tenham sido cadastrados em consequência desta votação.  Para compreender melhor os dados retornados, veja o [tutorial sobre votações do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = VotaesApi();
final id = id_example; // String | Identificador alfanumérico da votação
final accept = accept_example; // String | 

try {
    final result = api_instance.getVotacaoID(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling VotaesApi->getVotacaoID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificador alfanumérico da votação | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoesID**](ResultadoVotacoesID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVotacaoIDOrientacoes**
> ResultadoVotacoesIDOrientacoes getVotacaoIDOrientacoes(id, accept)

O voto recomendado pelas lideranças aos seus deputados em uma votação.

Em muitas votações, os líderes de partidos e blocos - as _bancadas_ - fazem recomendações de voto para seus parlamentares. Essas _orientações_ de uma votação também são feitas pelas lideranças de Governo, Minoria e as mais recentes Maioria e Oposição. Uma liderança também pode _liberar a bancada_ para que cada deputado vote como quiser, ou entrar em _obstrução_, para que seus parlamentares não sejam contados para o quórum da votação.  Se a votação identificada por `{id}` teve orientações, este recurso retorna uma lista em que cada item contém os identificadores de um partido, bloco ou liderança, e o posicionamento ou voto que foi recomendado aos seus parlamentares.  Até o momento, só estão disponíveis dados sobre orientações dadas em votações no Plenário.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = VotaesApi();
final id = id_example; // String | Identificador alfanumérico da votação
final accept = accept_example; // String | 

try {
    final result = api_instance.getVotacaoIDOrientacoes(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling VotaesApi->getVotacaoIDOrientacoes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificador alfanumérico da votação | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoesIDOrientacoes**](ResultadoVotacoesIDOrientacoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVotacaoVotosPorId**
> ResultadoVotacoesIDVotos getVotacaoVotosPorId(id, accept)

Como cada parlamentar votou em uma votação nominal e aberta

Se `{id}` é o identificador de uma votação da Câmara _nominal_ que não tenha sido _secreta_, este _endpoint_ retorna uma lista em que cada item contém os identificadores básicos de um deputado e o voto ou posicionamento que ele registrou.   O resultado é uma lista vazia se `{id}` foi uma votação _simbólica_, em que os votos individuais não são contabilizados. Mas há algumas votações simbólicas que também têm registros de \\\"votos\\\": nesses casos, normalmente se trata de parlamentares que pediram expressamente que seus posicionamentos fossem registrados.  Não são listados parlamentares ausentes à votação.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = VotaesApi();
final id = id_example; // String | Identificador alfanumérico da votação
final accept = accept_example; // String | 

try {
    final result = api_instance.getVotacaoVotosPorId(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling VotaesApi->getVotacaoVotosPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Identificador alfanumérico da votação | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoesIDVotos**](ResultadoVotacoesIDVotos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listar**
> ResultadoVotacoes listar(id, idProposicao, idEvento, idOrgao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Lista das votações da Câmara

Retorna uma lista de informações básicas sobre as votações ocorridas em eventos dos diversos órgãos da Câmara.  Se não forem passados parâmetros que delimitem o intervalo de tempo da pesquisa, são retornados dados sobre todas as votações ocorridas nos últimos 30 dias, em eventos de todos os órgãos.  Os parâmetros de data permitem estender o período, mas por enquanto é **necessário** que as duas datas sejam de um mesmo ano. Quando apenas uma delas está presente, são retornadas somente as votações ocorridas no mesmo ano, antes de `dataFim` ou após `dataInicio`.  Também é possível filtrar a listagem por identificadores de órgãos da Câmara, de proposições e de eventos.  Quando não há identificação da proposição que foi efetivamente votada, é preciso consultar o endpoint `/votacoes/{id}` para obter uma lista de proposições das quais uma pode ter sido o objeto da votação.  Para mais informações sobre o uso dos endpoints de votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = VotaesApi();
final id = []; // List<String> | Um ou mais identificador(es) alfanuméricos de votação, separados por vírgulas, para que seja(m) listado(s) dados sobre uma ou mais votações específicas.
final idProposicao = []; // List<String> | Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
final idEvento = []; // List<String> | Identificador de um ou mais evento(s) realizado(s) na Câmara, separados por vírgula, nos quais tenham sido realizadas as votações a serem listadas. Os identificadores podem ser obtidos por meio do recurso `/eventos`. Somente os eventos deliberativos podem ter votações. Os eventos podem ter ocorrido fora do intervalo de tempo padrão ou definido por `dataInicio` e/ou `dataFim`.
final idOrgao = []; // List<String> | Um ou mais identificador(es) numéricos de órgãos da Câmara, separados por vírgulas. Se presente, serão retornadas somente votações dos órgãos enumerados. Os identificadores existentes podem ser obtidos por meio do recurso `/orgaos`.
final dataInicio = dataInicio_example; // String | Data em formato `AAAA-MM-DD` para início do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas votações ocorridas dessa data até o fim do mesmo ano. Se usado com `dataFim`, as duas datas devem ser de um mesmo ano.
final dataFim = dataFim_example; // String | Data em formato `AAAA-MM-DD` que define o fim do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas todas as votações ocorridas desde 1º de janeiro do mesmo ano até esta data. Se usado com `dataInicio`, é preciso que as duas datas sejam de um mesmo ano.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição. O valor padrão e máximo para este endpoint é 100, e valores maiores serão ignorados.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada. Pode ser `id`, `idOrgao`, `siglaOrgao`, `idEvento`, `idProposicao`, `data`, `dataHoraRegistro` ou `idProposicaoObjeto`.
final accept = accept_example; // String | 

try {
    final result = api_instance.listar(id, idProposicao, idEvento, idOrgao, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling VotaesApi->listar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Um ou mais identificador(es) alfanuméricos de votação, separados por vírgulas, para que seja(m) listado(s) dados sobre uma ou mais votações específicas. | [optional] [default to const []]
 **idProposicao** | [**List<String>**](String.md)| Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas. | [optional] [default to const []]
 **idEvento** | [**List<String>**](String.md)| Identificador de um ou mais evento(s) realizado(s) na Câmara, separados por vírgula, nos quais tenham sido realizadas as votações a serem listadas. Os identificadores podem ser obtidos por meio do recurso `/eventos`. Somente os eventos deliberativos podem ter votações. Os eventos podem ter ocorrido fora do intervalo de tempo padrão ou definido por `dataInicio` e/ou `dataFim`. | [optional] [default to const []]
 **idOrgao** | [**List<String>**](String.md)| Um ou mais identificador(es) numéricos de órgãos da Câmara, separados por vírgulas. Se presente, serão retornadas somente votações dos órgãos enumerados. Os identificadores existentes podem ser obtidos por meio do recurso `/orgaos`. | [optional] [default to const []]
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

