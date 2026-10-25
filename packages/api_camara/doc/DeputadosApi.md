# api_camara.api.DeputadosApi

## Load the API package
```dart
import 'package:api_camara/api.dart';
```

All URIs are relative to *https://dadosabertos.camara.leg.br/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buscar1**](DeputadosApi.md#buscar1) | **GET** /deputados/{id}/mandatosExternos | Outros cargos eletivos já exercidos pelo parlamentar em sua carreira.
[**getDeputadoDespesas**](DeputadosApi.md#getdeputadodespesas) | **GET** /deputados/{id}/despesas | As despesas com exercício parlamentar do deputado
[**getDeputadoDiscursos**](DeputadosApi.md#getdeputadodiscursos) | **GET** /deputados/{id}/frentes | As frentes parlamentares das quais um deputado é integrante
[**getDeputadoDiscursos1**](DeputadosApi.md#getdeputadodiscursos1) | **GET** /deputados/{id}/discursos | Os discursos feitos por um deputado em eventos diversos
[**getDeputadoHistoricoV2**](DeputadosApi.md#getdeputadohistoricov2) | **GET** /deputados/{id}/historico | Lista de mudanças no exercício parlamentar de um deputado (versão GraphQL otimizada)
[**getDeputadoOrgaos**](DeputadosApi.md#getdeputadoorgaos) | **GET** /deputados/{id}/orgaos | Os órgãos dos quais um deputado é integrante
[**getDeputadoProfissao**](DeputadosApi.md#getdeputadoprofissao) | **GET** /deputados/{id}/profissoes | As profissões que o parlamentar declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência
[**getEvento**](DeputadosApi.md#getevento) | **GET** /deputados/{id}/eventos | Uma lista de eventos com a participação do parlamentar
[**getOcupacoesDeputados**](DeputadosApi.md#getocupacoesdeputados) | **GET** /deputados/{id}/ocupacoes | Os empregos e atividades que o(a) deputado(a) já teve
[**getSituacoesDeputado**](DeputadosApi.md#getsituacoesdeputado) | **GET** /referencias/situacoesDeputado | As possíveis situações de exercício parlamentar de um deputado
[**getSituacoesDeputado1**](DeputadosApi.md#getsituacoesdeputado1) | **GET** /referencias/deputados/codSituacao | As possíveis situações de exercício parlamentar de um deputado
[**obterDeputadoID1**](DeputadosApi.md#obterdeputadoid1) | **GET** /deputados/{id} | Informações detalhadas sobre um deputado específico
[**obterDeputados**](DeputadosApi.md#obterdeputados) | **GET** /deputados | Listagem e busca de deputados, segundo critérios
[**obterLideres1**](DeputadosApi.md#obterlideres1) | **GET** /legislaturas/{id}/lideres | Lista de líderes, vice-líderes e representantes na legislatura
[**obterMesaPorId**](DeputadosApi.md#obtermesaporid) | **GET** /legislaturas/{id}/mesa | Quais deputados fizeram parte da Mesa Diretora em uma legislatura


# **buscar1**
> ResultadoDeputadoMandatoExterno buscar1(id, accept)

Outros cargos eletivos já exercidos pelo parlamentar em sua carreira.

Retorna uma lista em que cada item traz informações básicas sobre um cargo para o qual o parlamentar identificado por {id} tenha sido eleito, em sua carreira política fora da Câmara dos Deputados. Estes dados são fornecidos pelo Tribunal Superior Eleitoral. A lista vem ordenada cronologicamente, por padrão.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico do parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.buscar1(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->buscar1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoMandatoExterno**](ResultadoDeputadoMandatoExterno.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoDespesas**
> ResultadoDeputadoDespesas getDeputadoDespesas(id, idLegislatura, ano, mes, cnpjCpfFornecedor, pagina, itens, ordem, ordenarPor, accept)

As despesas com exercício parlamentar do deputado

Dá acesso aos registros de pagamentos e reembolsos feitos pela Câmara em prol do deputado identificado por `{id}`, a título da Cota para Exercício da Atividade Parlamentar, a chamada \"cota parlamentar\".  A lista pode ser filtrada por mês, ano, legislatura, CNPJ ou CPF de um fornecedor.  Se não forem passados os parâmetros de tempo, o serviço retorna os dados dos __seis meses anteriores à requisição__.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | Identificador numérico do parlamentar.
final idLegislatura = []; // List<String> | Número(s) de uma ou mais legislatura(s), separados por vírgulas, em que tenham ocorrido as despesas.
final ano = []; // List<String> | Um ou mais ano(s) de ocorrência das despesas.
final mes = []; // List<String> | Um ou mais número(s) do(s) mês(es) de ocorrência das despesas.
final cnpjCpfFornecedor = cnpjCpfFornecedor_example; // String | CNPJ de uma pessoa jurídica, ou CPF de uma pessoa física, fornecedora do produto ou serviço (apenas números)
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista deverá ser ordenada: qualquer um dos campos do retorno, e também `idLegislatura`
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoDespesas(id, idLegislatura, ano, mes, cnpjCpfFornecedor, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoDespesas: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do parlamentar. | 
 **idLegislatura** | [**List<String>**](String.md)| Número(s) de uma ou mais legislatura(s), separados por vírgulas, em que tenham ocorrido as despesas. | [optional] [default to const []]
 **ano** | [**List<String>**](String.md)| Um ou mais ano(s) de ocorrência das despesas. | [optional] [default to const []]
 **mes** | [**List<String>**](String.md)| Um ou mais número(s) do(s) mês(es) de ocorrência das despesas. | [optional] [default to const []]
 **cnpjCpfFornecedor** | **String**| CNPJ de uma pessoa jurídica, ou CPF de uma pessoa física, fornecedora do produto ou serviço (apenas números) | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista deverá ser ordenada: qualquer um dos campos do retorno, e também `idLegislatura` | [optional] [default to 'ano']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoDespesas**](ResultadoDeputadoDespesas.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoDiscursos**
> ResultadoIdDeputadoMembro getDeputadoDiscursos(id, accept)

As frentes parlamentares das quais um deputado é integrante

Retorna uma lista de informações básicas sobre as frentes parlamentares das quais o parlamentar identificado por `{id}` seja membro, ou, no caso de frentes existentes em legislaturas anteriores, tenha encerrado a legislatura como integrante.  

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico do parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoDiscursos(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoDiscursos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoIdDeputadoMembro**](ResultadoIdDeputadoMembro.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoDiscursos1**
> ResultadoDeputadoDiscurso getDeputadoDiscursos1(id, idLegislatura, dataInicio, dataFim, ordenarPor, ordem, itens, pagina, accept)

Os discursos feitos por um deputado em eventos diversos

Retorna uma lista de informações sobre os pronunciamentos feitos pelo deputado identificado por {id} que tenham sido registrados, em quaisquer eventos, nos sistemas da Câmara.  Caso os parâmetros de tempo (`dataInicio`, `dataFim` e `idLegislatura`) não sejam configurados na requisição, são buscados os discursos ocorridos nos sete dias anteriores ao da requisição.  

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | Identificador numérico do parlamentar.
final idLegislatura = []; // List<String> | Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final ordenarPor = ordenarPor_example; // String | Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoDiscursos1(id, idLegislatura, dataInicio, dataFim, ordenarPor, ordem, itens, pagina, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoDiscursos1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do parlamentar. | 
 **idLegislatura** | [**List<String>**](String.md)| Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder. | [optional] [default to const []]
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **ordenarPor** | **String**| Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista. | [optional] [default to 'dataHoraInicio']
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'DESC']
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoDiscurso**](ResultadoDeputadoDiscurso.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoHistoricoV2**
> ResultadoDeputadoHistorico getDeputadoHistoricoV2(id, accept)

Lista de mudanças no exercício parlamentar de um deputado (versão GraphQL otimizada)

Endpoint alternativo que busca o histórico do deputado via API GraphQL externa de alta performance, retornando a mesma estrutura de dados do endpoint v1.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | Identificador numérico do parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoHistoricoV2(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoHistoricoV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoHistorico**](ResultadoDeputadoHistorico.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoOrgaos**
> ResultadoDeputadoOrgaos getDeputadoOrgaos(id, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Os órgãos dos quais um deputado é integrante

Retorna uma lista de órgãos, como as comissões e procuradorias, dos quais o deputado identificado por `{id}` participa ou participou durante um intervalo de tempo.  Cada item identifica um órgão, o cargo ocupado pelo parlamentar neste órgão (como presidente, vice-presidente, titular ou suplente) e as datas de início e fim da ocupação deste cargo.  Se não for passado algum parâmetro de tempo, são retornados os órgãos ocupados pelo parlamentar __no momento da requisição__. Neste caso a lista será vazia se o deputado não estiver em exercício.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico do parlamentar.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo de dados pelo qual a lista deve ser ordenada: `idOrgao`, `siglaOrgao`, `nomeOrgao`, `titulo`, `dataInicio` ou `dataFim`
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoOrgaos(id, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoOrgaos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do parlamentar. | 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo de dados pelo qual a lista deve ser ordenada: `idOrgao`, `siglaOrgao`, `nomeOrgao`, `titulo`, `dataInicio` ou `dataFim` | [optional] [default to 'dataInicio']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoOrgaos**](ResultadoDeputadoOrgaos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeputadoProfissao**
> ResultadoDeputadoProfissoes getDeputadoProfissao(id, accept)

As profissões que o parlamentar declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência

Retorna uma lista de dados sobre profissões que o parlamentar identificado por `{id}` declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência.  

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico do parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.getDeputadoProfissao(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getDeputadoProfissao: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoProfissoes**](ResultadoDeputadoProfissoes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvento**
> ResultadoDeputadoEventos getEvento(id, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept)

Uma lista de eventos com a participação do parlamentar

Retorna uma lista de objetos `evento` nos quais a participação do parlamentar identificado por `{id}` era ou é prevista.  Um período de tempo pode ser delimitado para a busca.  Se não forem passados parâmetros de tempo, são retornados os eventos num período de __cinco dias__, sendo dois antes e dois depois do dia da requisição.  Os itens podem ser ordenados por `id`, `siglaOrgao` ou `dataHoraInicio`.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico do parlamentar.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
final accept = accept_example; // String | 

try {
    final result = api_instance.getEvento(id, dataInicio, dataFim, pagina, itens, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getEvento: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico do parlamentar. | 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista. | [optional] [default to 'dataHoraInicio']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoEventos**](ResultadoDeputadoEventos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOcupacoesDeputados**
> ResultadoOcupacoesDeputado getOcupacoesDeputados(id, accept)

Os empregos e atividades que o(a) deputado(a) já teve

Enumera as atividades profissionais ou ocupacionais que o deputado identificado por `{id}` já teve em sua carreira e declarou à Câmara dos Deputados.  *ATENÇÃO:* Há problemas reconhecidos de estruturação nesses dados. Os casos encontrados podem ser reportados ao Centro de Documentação e Informação da Câmara, por meio do endereço https://camara.leg.br/faleconosco .

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | O identificador numérico da entidade.
final accept = accept_example; // String | 

try {
    final result = api_instance.getOcupacoesDeputados(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getOcupacoesDeputados: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| O identificador numérico da entidade. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoOcupacoesDeputado**](ResultadoOcupacoesDeputado.md)

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

final api_instance = DeputadosApi();

try {
    final result = api_instance.getSituacoesDeputado();
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getSituacoesDeputado: $e\n');
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

final api_instance = DeputadosApi();

try {
    final result = api_instance.getSituacoesDeputado1();
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->getSituacoesDeputado1: $e\n');
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

# **obterDeputadoID1**
> ResultadoDeputadoID obterDeputadoID1(id, accept)

Informações detalhadas sobre um deputado específico

 Retorna os dados cadastrais de um parlamentar identificado por `{id}` que, em algum momento da história e por qualquer período, entrou em exercício na Câmara.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = 789; // int | Identificador numérico do parlamentar.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterDeputadoID1(id, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->obterDeputadoID1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identificador numérico do parlamentar. | 
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputadoID**](ResultadoDeputadoID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **obterDeputados**
> ResultadoDeputado obterDeputados(id, nome, idLegislatura, siglaUf, siglaPartido, siglaSexo, pagina, itens, dataInicio, dataFim, ordem, ordenarPor, accept)

Listagem e busca de deputados, segundo critérios

Retorna uma lista de dados básicos sobre deputados que estiveram em exercício parlamentar em algum intervalo de tempo.  Se não for passado um parâmetro de tempo, como `idLegislatura` ou `dataInicio`, a lista enumerará somente os deputados _em exercício no momento da requisição_.

### Example
```dart
import 'package:api_camara/api.dart';

final api_instance = DeputadosApi();
final id = []; // List<String> | Número(s) identificador(es) de um deputado, separados por vírgulas.
final nome = nome_example; // String | Parte nome parlamentar.
final idLegislatura = []; // List<String> | Número(s) identificador(es) de uma ou mais legislatura(s) de que os parlamentares tenham participado, separados por vírgulas.
final siglaUf = []; // List<String> | Uma ou mais sigla(s) de unidades federativas (estados e Distrito Federal). Uma lista de siglas válidas pode ser obtida em `/referencias/deputados/siglaUf`. Se ausente, serão retornados deputados de todos os estados.
final siglaPartido = []; // List<String> | Uma ou mais sigla(s) de partidos aos quais sejam filiados os deputados. Para obter as siglas válidas, consulte `/partidos`. __Atenção:__ partidos diferentes podem usar a mesma sigla em diferentes legislaturas!
final siglaSexo = siglaSexo_example; // String | Letra que designe o gênero dos parlamentares que se deseja buscar, sendo M para masculino e F para feminino
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final dataInicio = dataInicio_example; // String | Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
final ordem = ordem_example; // String | O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
final ordenarPor = ordenarPor_example; // String | Nome do campo pelo qual a lista deve ser ordenada: `id`, `idLegislatura`, `nome`, `siglaUF` ou `siglaPartido`
final accept = accept_example; // String | 

try {
    final result = api_instance.obterDeputados(id, nome, idLegislatura, siglaUf, siglaPartido, siglaSexo, pagina, itens, dataInicio, dataFim, ordem, ordenarPor, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->obterDeputados: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**List<String>**](String.md)| Número(s) identificador(es) de um deputado, separados por vírgulas. | [optional] [default to const []]
 **nome** | **String**| Parte nome parlamentar. | [optional] 
 **idLegislatura** | [**List<String>**](String.md)| Número(s) identificador(es) de uma ou mais legislatura(s) de que os parlamentares tenham participado, separados por vírgulas. | [optional] [default to const []]
 **siglaUf** | [**List<String>**](String.md)| Uma ou mais sigla(s) de unidades federativas (estados e Distrito Federal). Uma lista de siglas válidas pode ser obtida em `/referencias/deputados/siglaUf`. Se ausente, serão retornados deputados de todos os estados. | [optional] [default to const []]
 **siglaPartido** | [**List<String>**](String.md)| Uma ou mais sigla(s) de partidos aos quais sejam filiados os deputados. Para obter as siglas válidas, consulte `/partidos`. __Atenção:__ partidos diferentes podem usar a mesma sigla em diferentes legislaturas! | [optional] [default to const []]
 **siglaSexo** | **String**| Letra que designe o gênero dos parlamentares que se deseja buscar, sendo M para masculino e F para feminino | [optional] 
 **pagina** | **int**| Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1. | [optional] 
 **itens** | **int**| Número máximo de itens na página que se deseja obter com esta requisição. | [optional] 
 **dataInicio** | **String**| Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **dataFim** | **String**| Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`. | [optional] 
 **ordem** | **String**| O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0. | [optional] [default to 'ASC']
 **ordenarPor** | **String**| Nome do campo pelo qual a lista deve ser ordenada: `id`, `idLegislatura`, `nome`, `siglaUF` ou `siglaPartido` | [optional] [default to 'nome']
 **accept** | **String**|  | [optional] 

### Return type

[**ResultadoDeputado**](ResultadoDeputado.md)

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

final api_instance = DeputadosApi();
final id = []; // List<String> | Número da legislatura da qual se deseja os dados.
final pagina = 56; // int | Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
final itens = 56; // int | Número máximo de itens na página que se deseja obter com esta requisição.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterLideres1(id, pagina, itens, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->obterLideres1: $e\n');
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

final api_instance = DeputadosApi();
final id = 789; // int | Número da legislatura da qual se deseja os dados.
final dataInicio = dataInicio_example; // String | Dia de início do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
final dataFim = dataFim_example; // String | Data de término do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
final accept = accept_example; // String | 

try {
    final result = api_instance.obterMesaPorId(id, dataInicio, dataFim, accept);
    print(result);
} catch (e) {
    print('Exception when calling DeputadosApi->obterMesaPorId: $e\n');
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

