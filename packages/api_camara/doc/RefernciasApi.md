# api_camara.api.RefernciasApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCodTipoProfissao**](RefernciasApi.md#getcodtipoprofissao) | **GET** /referencias/deputados/codTipoProfissao | Códigos e títulos de atividades profissionais usados na Câmara
[**getDeputados**](RefernciasApi.md#getdeputados) | **GET** /referencias/deputados | Valores válidos para parâmetros do endpoint `/deputados`
[**getDespesas**](RefernciasApi.md#getdespesas) | **GET** /referencias/deputados/tipoDespesa | Os possíveis tipos de despesas que fazem parte da Cota Parlamentar
[**getEentos**](RefernciasApi.md#geteentos) | **GET** /referencias/eventos | Valores válidos para parâmetros do endpoint `/eventos`
[**getOrgaos**](RefernciasApi.md#getorgaos) | **GET** /referencias/orgaos | Valores válidos para parâmetros do endpoint sobre órgãos
[**getProposicoes**](RefernciasApi.md#getproposicoes) | **GET** /referencias/proposicoes | Valores válidos para parâmetros do endpoint sobre órgãos
[**getSituacoesDeputado**](RefernciasApi.md#getsituacoesdeputado) | **GET** /referencias/situacoesDeputado | As possíveis situações de exercício parlamentar de um deputado
[**getSituacoesDeputado1**](RefernciasApi.md#getsituacoesdeputado1) | **GET** /referencias/deputados/codSituacao | As possíveis situações de exercício parlamentar de um deputado
[**getSituacoesEvento**](RefernciasApi.md#getsituacoesevento) | **GET** /referencias/eventos/codSituacaoEvento | As possíveis situações para eventos
[**getSituacoesEvento1**](RefernciasApi.md#getsituacoesevento1) | **GET** /referencias/situacoesEvento | As possíveis situações para eventos
[**getSituacoesOrgao**](RefernciasApi.md#getsituacoesorgao) | **GET** /referencias/orgaos/codSituacao | As situações em que órgãos podem se encontrar
[**getSituacoesOrgao1**](RefernciasApi.md#getsituacoesorgao1) | **GET** /referencias/situacoesOrgao | As situações em que órgãos podem se encontrar
[**getSituacoesProposicao**](RefernciasApi.md#getsituacoesproposicao) | **GET** /referencias/proposicoes/codSituacao | Os possíveis estados de tramitação de uma proposição
[**getSituacoesProposicao1**](RefernciasApi.md#getsituacoesproposicao1) | **GET** /referencias/situacoesProposicao | Os possíveis estados de tramitação de uma proposição
[**getTemasProposicao**](RefernciasApi.md#gettemasproposicao) | **GET** /referencias/proposicoes/codTema | Os vários tipos de temas existentes
[**getTiposAutor**](RefernciasApi.md#gettiposautor) | **GET** /referencias/tiposAutor | Entidades que podem ser autoras de proposições
[**getTiposAutor1**](RefernciasApi.md#gettiposautor1) | **GET** /referencias/proposicoes/codTipoAutor | Entidades que podem ser autoras de proposições
[**getTiposEvento**](RefernciasApi.md#gettiposevento) | **GET** /referencias/tiposEvento | Os tipos de eventos realizados na Câmara
[**getTiposEvento1**](RefernciasApi.md#gettiposevento1) | **GET** /referencias/eventos/codTipoEvento | Os tipos de eventos realizados na Câmara
[**getTiposOrgao**](RefernciasApi.md#gettiposorgao) | **GET** /referencias/tiposOrgao | Os tipos de órgãos que existem na Câmara
[**getTiposOrgao1**](RefernciasApi.md#gettiposorgao1) | **GET** /referencias/orgaos/codTipoOrgao | Os tipos de órgãos que existem na Câmara
[**getTiposProposicao**](RefernciasApi.md#gettiposproposicao) | **GET** /referencias/proposicoes/siglaTipo | Os vários tipos de proposições existentes
[**getTiposProposicao1**](RefernciasApi.md#gettiposproposicao1) | **GET** /referencias/tiposProposicao | Os vários tipos de proposições existentes
[**getTiposTramitacao**](RefernciasApi.md#gettipostramitacao) | **GET** /referencias/tiposTramitacao | Os vários tipos de tramitação existentes
[**getTiposTramitacao1**](RefernciasApi.md#gettipostramitacao1) | **GET** /referencias/proposicoes/codTipoTramitacao | Os vários tipos de tramitação existentes
[**getUf**](RefernciasApi.md#getuf) | **GET** /referencias/uf | As siglas e nomes dos estados e do Distrito Federal
[**getUf1**](RefernciasApi.md#getuf1) | **GET** /referencias/deputados/siglaUF | As siglas e nomes dos estados e do Distrito Federal


# **getCodTipoProfissao**
> ResultadoReferencias getCodTipoProfissao()

Códigos e títulos de atividades profissionais usados na Câmara

Retorna uma lista dos títulos de profissões registradas na Câmara dos Deputados (em masculino) e seus códigos.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getCodTipoProfissao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getCodTipoProfissao: $e\n');
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

# **getDeputados**
> ReferenciaDeputado getDeputados()

Valores válidos para parâmetros do endpoint `/deputados`

Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /deputados. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os valores válidos para tais parâmetros. Este recurso não é disponível em formato CSV.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getDeputados();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getDeputados: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReferenciaDeputado**](ReferenciaDeputado.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDespesas**
> ResultadoReferencias getDespesas()

Os possíveis tipos de despesas que fazem parte da Cota Parlamentar

Retorna uma lista de códigos e nomes das possíveis despesas de Cota Parlamentar: `COMBUSTÍVEIS E LUBRIFICANTES.`, `TELEFONIA`, `SERVIÇOS POSTAIS`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getDespesas();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getDespesas: $e\n');
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

# **getEentos**
> ReferenciaEvento getEentos()

Valores válidos para parâmetros do endpoint `/eventos`

Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /eventos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getEentos();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getEentos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReferenciaEvento**](ReferenciaEvento.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgaos**
> ReferenciaOrgao getOrgaos()

Valores válidos para parâmetros do endpoint sobre órgãos

Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /orgaos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getOrgaos();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getOrgaos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReferenciaOrgao**](ReferenciaOrgao.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProposicoes**
> ReferenciaProposicao getProposicoes()

Valores válidos para parâmetros do endpoint sobre órgãos

Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /proposicoes. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getProposicoes();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getProposicoes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReferenciaProposicao**](ReferenciaProposicao.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSituacoesDeputado**
> ResultadoReferencias getSituacoesDeputado()

As possíveis situações de exercício parlamentar de um deputado

Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesDeputado();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesDeputado: $e\n');
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

# **getSituacoesDeputado1**
> ResultadoReferencias getSituacoesDeputado1()

As possíveis situações de exercício parlamentar de um deputado

Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesDeputado1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesDeputado1: $e\n');
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

# **getSituacoesEvento**
> ResultadoReferencias getSituacoesEvento()

As possíveis situações para eventos

Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesEvento();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesEvento: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesEvento1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesEvento1: $e\n');
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

# **getSituacoesOrgao**
> ResultadoReferencias getSituacoesOrgao()

As situações em que órgãos podem se encontrar

Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesOrgao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesOrgao: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesOrgao1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesOrgao1: $e\n');
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

# **getSituacoesProposicao**
> ResultadoReferencias getSituacoesProposicao()

Os possíveis estados de tramitação de uma proposição

Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesProposicao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesProposicao: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getSituacoesProposicao1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getSituacoesProposicao1: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTemasProposicao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTemasProposicao: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposAutor();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposAutor: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposAutor1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposAutor1: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposEvento();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposEvento: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposEvento1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposEvento1: $e\n');
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

# **getTiposOrgao**
> ResultadoReferencias getTiposOrgao()

Os tipos de órgãos que existem na Câmara

Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposOrgao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposOrgao: $e\n');
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

# **getTiposOrgao1**
> ResultadoReferencias getTiposOrgao1()

Os tipos de órgãos que existem na Câmara

Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposOrgao1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposOrgao1: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposProposicao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposProposicao: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposProposicao1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposProposicao1: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposTramitacao();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposTramitacao: $e\n');
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

final api_instance = RefernciasApi();

try {
    final result = api_instance.getTiposTramitacao1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getTiposTramitacao1: $e\n');
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

# **getUf**
> ResultadoReferencias getUf()

As siglas e nomes dos estados e do Distrito Federal

Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getUf();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getUf: $e\n');
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

# **getUf1**
> ResultadoReferencias getUf1()

As siglas e nomes dos estados e do Distrito Federal

Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = RefernciasApi();

try {
    final result = api_instance.getUf1();
    print(result);
} catch (e) {
    print('Exception when calling RefernciasApi->getUf1: $e\n');
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

