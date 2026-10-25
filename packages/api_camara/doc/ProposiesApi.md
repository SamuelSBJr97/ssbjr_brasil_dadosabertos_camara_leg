# api_camara.api.ProposiesApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSituacoesProposicao**](ProposiesApi.md#getsituacoesproposicao) | **GET** /referencias/proposicoes/codSituacao | Os possíveis estados de tramitação de uma proposição
[**getSituacoesProposicao1**](ProposiesApi.md#getsituacoesproposicao1) | **GET** /referencias/situacoesProposicao | Os possíveis estados de tramitação de uma proposição
[**getTemasProposicao**](ProposiesApi.md#gettemasproposicao) | **GET** /referencias/proposicoes/codTema | Os vários tipos de temas existentes
[**getTiposAutor**](ProposiesApi.md#gettiposautor) | **GET** /referencias/tiposAutor | Entidades que podem ser autoras de proposições
[**getTiposAutor1**](ProposiesApi.md#gettiposautor1) | **GET** /referencias/proposicoes/codTipoAutor | Entidades que podem ser autoras de proposições
[**getTiposProposicao**](ProposiesApi.md#gettiposproposicao) | **GET** /referencias/proposicoes/siglaTipo | Os vários tipos de proposições existentes
[**getTiposProposicao1**](ProposiesApi.md#gettiposproposicao1) | **GET** /referencias/tiposProposicao | Os vários tipos de proposições existentes
[**getTiposTramitacao**](ProposiesApi.md#gettipostramitacao) | **GET** /referencias/tiposTramitacao | Os vários tipos de tramitação existentes
[**getTiposTramitacao1**](ProposiesApi.md#gettipostramitacao1) | **GET** /referencias/proposicoes/codTipoTramitacao | Os vários tipos de tramitação existentes
[**obterAutoresDaProposicao**](ProposiesApi.md#obterautoresdaproposicao) | **GET** /proposicoes/{id}/autores | Lista pessoas e/ou entidades autoras de uma proposição
[**obterPorId**](ProposiesApi.md#obterporid) | **GET** /proposicoes/{id} | Informações detalhadas sobre uma proposição específica
[**obterRelacionadasPorId**](ProposiesApi.md#obterrelacionadasporid) | **GET** /proposicoes/{id}/relacionadas | Uma lista de proposições relacionadas a uma em especial
[**obterTemasPorId**](ProposiesApi.md#obtertemasporid) | **GET** /proposicoes/{id}/temas | Lista de áreas temáticas de uma proposição
[**obterTramitacaoPorId**](ProposiesApi.md#obtertramitacaoporid) | **GET** /proposicoes/{id}/tramitacoes | O histórico de passos na tramitação de uma proposta
[**obterVotacoesPorId**](ProposiesApi.md#obtervotacoesporid) | **GET** /proposicoes/{id}/votacoes | Informações detalhadas de votações sobre uma proposição específica
[**search**](ProposiesApi.md#search) | **GET** /proposicoes | Lista configurável de proposições na Câmara


# **getSituacoesProposicao**
> ResultadoReferencias getSituacoesProposicao()

Os possíveis estados de tramitação de uma proposição

Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getSituacoesProposicao();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getSituacoesProposicao: $e\n');
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

# **getSituacoesProposicao1**
> ResultadoReferencias getSituacoesProposicao1()

Os possíveis estados de tramitação de uma proposição

Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getSituacoesProposicao1();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getSituacoesProposicao1: $e\n');
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

# **getTemasProposicao**
> ResultadoEventos getTemasProposicao()

Os vários tipos de temas existentes

Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTemasProposicao();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTemasProposicao: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposAutor**
> ResultadoReferencias getTiposAutor()

Entidades que podem ser autoras de proposições

Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposAutor();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposAutor: $e\n');
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

# **getTiposAutor1**
> ResultadoReferencias getTiposAutor1()

Entidades que podem ser autoras de proposições

Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposAutor1();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposAutor1: $e\n');
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

# **getTiposProposicao**
> ResultadoEventos getTiposProposicao()

Os vários tipos de proposições existentes

Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposProposicao();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposProposicao: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposProposicao1**
> ResultadoEventos getTiposProposicao1()

Os vários tipos de proposições existentes

Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposProposicao1();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposProposicao1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposTramitacao**
> ResultadoEventos getTiposTramitacao()

Os vários tipos de tramitação existentes

Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposTramitacao();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposTramitacao: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTiposTramitacao1**
> ResultadoEventos getTiposTramitacao1()

Os vários tipos de tramitação existentes

Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();

try {
    final result = api_instance.getTiposTramitacao1();
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->getTiposTramitacao1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResultadoEventos**](ResultadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterAutoresDaProposicao**
> ResultadoProposicoesAutores obterAutoresDaProposicao(id, accept)

Lista pessoas e/ou entidades autoras de uma proposição

Retorna uma lista em que cada item identifica uma pessoa ou entidade que é autora da proposição identificada por `{id}`. Além de deputados, também podem ser autores de proposições os senadores, a sociedade civil, assembleias legislativas e os poderes Executivo e Judiciário.  Pelo Regimento da Câmara, todos os que assinam uma proposição são considerados autores (art. 102), tanto os proponentes quanto os apoiadores.  Para obter mais informações sobre cada autor, é recomendável acessar, se disponível, a URL que é valor do campo `uri`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Identificador alfanumérico da entidade
final accept = accept_example; // String | 

try {
    final result = api_instance.obterAutoresDaProposicao(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterAutoresDaProposicao: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador alfanumérico da entidade | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoProposicoesAutores**](ResultadoProposicoesAutores.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterPorId**
> Object obterPorId(id, accept)

Informações detalhadas sobre uma proposição específica

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Identificador numérico da proposição
final accept = accept_example; // String | 

try {
    final result = api_instance.obterPorId(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico da proposição | 
 **accept** | **String**|  | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterRelacionadasPorId**
> ResultadoProposicoesRelacionadas obterRelacionadasPorId(id, accept)

Uma lista de proposições relacionadas a uma em especial

Lista de informações básicas sobre proposições que de alguma forma se relacionam com a proposição identificada por `{id}`, como pareceres, requerimentos, substitutivos, etc.  

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Id da proposição
final accept = accept_example; // String | 

try {
    final result = api_instance.obterRelacionadasPorId(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterRelacionadasPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id da proposição | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoProposicoesRelacionadas**](ResultadoProposicoesRelacionadas.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterTemasPorId**
> ResultadoProposicoesTema obterTemasPorId(id, accept)

Lista de áreas temáticas de uma proposição

Lista em que cada item traz informações sobre uma área temática à qual a proposição identificada por `{id}` se relaciona, segundo classificação oficial do Centro de Documentação e Informação da Câmara.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Id da proposição
final accept = accept_example; // String | 

try {
    final result = api_instance.obterTemasPorId(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterTemasPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Id da proposição | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoProposicoesTema**](ResultadoProposicoesTema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterTramitacaoPorId**
> ResultadoFrentes obterTramitacaoPorId(id, dataInicio, dataFim, accept)

O histórico de passos na tramitação de uma proposta

Lista que traz, como cada item, um \"retrato\" de informações que podem ser alteradas a cada etapa de tramitação na vida de uma proposição (como regime de tramitação e situação) e informações sobre o que causou esse novo estado.  Esta representação das tramitações ainda é provisória.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Identificador numérico da proposição
final dataInicio = dataInicio_example; // String | Data do início da tramitação, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data do fim da tramitação
final accept = accept_example; // String | 

try {
    final result = api_instance.obterTramitacaoPorId(id, dataInicio, dataFim, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterTramitacaoPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico da proposição | 
 **dataInicio** | **String**| Data do início da tramitação, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data do fim da tramitação | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoFrentes**](ResultadoFrentes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterVotacoesPorId**
> ResultadoVotacoes obterVotacoesPorId(id, ordem, ordenarPor, accept)

Informações detalhadas de votações sobre uma proposição específica

Retorna uma lista de identificadores básicos sobre as votações na Câmara que tiveram a proposição `{id}` como _objeto_ ou como _afetada_ pelos seus resultados. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = 789; // int | Identificador numérico da proposição
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista será ordenada: `id`, `dataHoraRegistro`
final accept = accept_example; // String | 

try {
    final result = api_instance.obterVotacoesPorId(id, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->obterVotacoesPorId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico da proposição | 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'DESC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista será ordenada: `id`, `dataHoraRegistro` | [optional] [default to 'dataHoraRegistro']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoVotacoes**](ResultadoVotacoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> ResultadoProposicoes search(id, siglaTipo, numero, ano, codTipo, idDeputadoAutor, autor, siglaPartidoAutor, idPartidoAutor, siglaUfAutor, keywords, tramitacaoSenado, dataInicio, dataFim, dataApresentacaoInicio, dataApresentacaoFim, codSituacao, codTema, pagina, itens, ordem, ordenarPor, accept)

Lista configurável de proposições na Câmara

Lista de informações básicas sobre projetos de lei, resoluções, medidas provisórias, emendas, pareceres e todos os outros tipos de proposições na Câmara.  Por padrão, são retornadas todas as proposições que foram apresentadas ou tiveram alguma mudança de situação nos últimos 30 dias. Esse intervalo de tramitação pode ser configurado pelos parâmetros `dataInicio` e `dataFim`.  Se for(em) passado(s) um ou mais dos parâmetros...    - `id`    - `ano`    - `dataApresentacaoInicio`    - `dataApresentacaoFim`    - `idAutor`    - `autor`  ...o intervalo de tramitação só será levado em consideração se os parâmetros `dataInicio` e/ou `dataFim` estiverem explicitamente configurados. Se não estiverem, poderão ser listadas proposições que não tiveram tramitação recente (e a resposta pode demorar bastante).

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = ProposiesApi();
final id = []; // List<String> | Número(s) identificador(es) de uma ou mais proposições no **Dados Abertos**, separados por vírgulas.
final siglaTipo = []; // List<String> | Uma ou mais sigla(s) separadas por vírgulas do(s) tipo(s) das proposições que se deseja obter. A lista de tipos e siglas existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`
final numero = []; // List<String> | Um ou mais número(s), separados por vírgula, oficialmente atribuídos às proposições segundo o art. 137 do Regimento Interno, como \"PL **1234**_/2016\"
final ano = []; // List<String> | Um ou mais ano(s) de apresentação das proposições que serão listadas, separados por vírgulas, no formato `AAAA`
final codTipo = []; // List<String> | Um ou mais código(s) numérico(s) de tipo específico de proposição, separados por vírgula. A lista de códigos existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`.
final idDeputadoAutor = []; // List<String> | Um ou mais números identificador(es), separados por vírgula, do(s) deputado(s) autor(es) das proposições que serão listadas. Cada número deve ser o identificador exclusivo de um parlamentar no **Dados Abertos**
final autor = autor_example; // String | Nome ou parte do nome do(s) autor(es) das proposições que se deseja obter. Deve estar entre aspas
final siglaPartidoAutor = []; // List<String> | Uma ou mais sigla(s) separadas por vírgulas do(s) partido(s) a que pertençam os autores das proposições a serem listadas
final idPartidoAutor = 789; // int | Identificador numérico no **Dados Abertos** do partido a que pertençam os autores das proposições que serão listadas. Esses identificadores podem ser obtidos em `/partidos` e são mais precisos do que as siglas, que podem ser usadas por partidos diferentes em épocas diferentes
final siglaUfAutor = []; // List<String> | Uma ou mais sigla(s) de unidade(s) da federação (estados e Distrito Federal) pela(s) qual(quais) o(s) autor(es) das proposições selecionadas tenha(m) sido eleito(s)
final keywords = []; // List<String> | Uma ou mais palavras chaves sobre o tema a que a proposição se relaciona
final tramitacaoSenado = true; // bool | Indicador booleano, com valor `TRUE` ou `FALSE` para trazer apenas proposições que já tenha tramitado no Senado
final dataInicio = 2013-10-20T19:20:30+01:00; // DateTime | Data do início do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas, no formato `AAAA-MM-DD`. Se omitido, é assumido como a data de 30 dias anteriores à proposição
final dataFim = 2013-10-20T19:20:30+01:00; // DateTime | Data do fim do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas. Se omitido, é considerado ser o dia em que é feita a requisição
final dataApresentacaoInicio = 2013-10-20T19:20:30+01:00; // DateTime | Data do início do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas, no formato `AAAA-MM-DD`
final dataApresentacaoFim = 2013-10-20T19:20:30+01:00; // DateTime | Data do fim do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas
final codSituacao = []; // List<String> | Código(s) numérico(s), separados por vírgulas, do tipo de situação em que se encontram as proposições que serão listadas. As situações possíveis podem ser obtidas em `/referencias/proposicoes/codSituacao`. **Atenção:** este parâmetro pode apresentar resultados inesperados, por problemas com o registro dos dados.
final codTema = []; // List<String> | Código(s) numérico(s), separados por vírgulas, das áreas temáticas das proposições que serão listadas. Os temas possíveis podem ser obtidos em `/referencias/proposicoes/codTema`
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista deve ser ordenada: `id`, `codTipo`, `siglaTipo`, `numero` ou `ano`
final accept = accept_example; // String | 

try {
    final result = api_instance.search(id, siglaTipo, numero, ano, codTipo, idDeputadoAutor, autor, siglaPartidoAutor, idPartidoAutor, siglaUfAutor, keywords, tramitacaoSenado, dataInicio, dataFim, dataApresentacaoInicio, dataApresentacaoFim, codSituacao, codTema, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling ProposiesApi->search: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Número(s) identificador(es) de uma ou mais proposições no **Dados Abertos**, separados por vírgulas. | [optional] [default to const []]
 **siglaTipo** | [**List<String>**](String.md)| Uma ou mais sigla(s) separadas por vírgulas do(s) tipo(s) das proposições que se deseja obter. A lista de tipos e siglas existentes pode ser obtida em `/referencias/proposicoes/siglaTipo` | [optional] [default to const []]
 **numero** | [**List<String>**](String.md)| Um ou mais número(s), separados por vírgula, oficialmente atribuídos às proposições segundo o art. 137 do Regimento Interno, como \"PL **1234**_/2016\" | [optional] [default to const []]
 **ano** | [**List<String>**](String.md)| Um ou mais ano(s) de apresentação das proposições que serão listadas, separados por vírgulas, no formato `AAAA` | [optional] [default to const []]
 **codTipo** | [**List<String>**](String.md)| Um ou mais código(s) numérico(s) de tipo específico de proposição, separados por vírgula. A lista de códigos existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`. | [optional] [default to const []]
 **idDeputadoAutor** | [**List<String>**](String.md)| Um ou mais números identificador(es), separados por vírgula, do(s) deputado(s) autor(es) das proposições que serão listadas. Cada número deve ser o identificador exclusivo de um parlamentar no **Dados Abertos** | [optional] [default to const []]
 **autor** | **String**| Nome ou parte do nome do(s) autor(es) das proposições que se deseja obter. Deve estar entre aspas | [optional] 
 **siglaPartidoAutor** | [**List<String>**](String.md)| Uma ou mais sigla(s) separadas por vírgulas do(s) partido(s) a que pertençam os autores das proposições a serem listadas | [optional] [default to const []]
 **idPartidoAutor** | **int**| Identificador numérico no **Dados Abertos** do partido a que pertençam os autores das proposições que serão listadas. Esses identificadores podem ser obtidos em `/partidos` e são mais precisos do que as siglas, que podem ser usadas por partidos diferentes em épocas diferentes | [optional] 
 **siglaUfAutor** | [**List<String>**](String.md)| Uma ou mais sigla(s) de unidade(s) da federação (estados e Distrito Federal) pela(s) qual(quais) o(s) autor(es) das proposições selecionadas tenha(m) sido eleito(s) | [optional] [default to const []]
 **keywords** | [**List<String>**](String.md)| Uma ou mais palavras chaves sobre o tema a que a proposição se relaciona | [optional] [default to const []]
 **tramitacaoSenado** | **bool**| Indicador booleano, com valor `TRUE` ou `FALSE` para trazer apenas proposições que já tenha tramitado no Senado | [optional] 
 **dataInicio** | **DateTime**| Data do início do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas, no formato `AAAA-MM-DD`. Se omitido, é assumido como a data de 30 dias anteriores à proposição | [optional] 
 **dataFim** | **DateTime**| Data do fim do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas. Se omitido, é considerado ser o dia em que é feita a requisição | [optional] 
 **dataApresentacaoInicio** | **DateTime**| Data do início do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas, no formato `AAAA-MM-DD` | [optional] 
 **dataApresentacaoFim** | **DateTime**| Data do fim do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas | [optional] 
 **codSituacao** | [**List<String>**](String.md)| Código(s) numérico(s), separados por vírgulas, do tipo de situação em que se encontram as proposições que serão listadas. As situações possíveis podem ser obtidas em `/referencias/proposicoes/codSituacao`. **Atenção:** este parâmetro pode apresentar resultados inesperados, por problemas com o registro dos dados. | [optional] [default to const []]
 **codTema** | [**List<String>**](String.md)| Código(s) numérico(s), separados por vírgulas, das áreas temáticas das proposições que serão listadas. Os temas possíveis podem ser obtidos em `/referencias/proposicoes/codTema` | [optional] [default to const []]
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista deve ser ordenada: `id`, `codTipo`, `siglaTipo`, `numero` ou `ano` | [optional] [default to 'id']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoProposicoes**](ResultadoProposicoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

