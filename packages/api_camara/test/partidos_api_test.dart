//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:api_camara/api.dart';
import 'package:test/test.dart';


/// tests for PartidosApi
void main() {
  // final instance = PartidosApi();

  group('tests for PartidosApi', () {
    // Uma lista dos parlamentares de um partido durante um período
    //
    // Retorna uma lista de deputados que estão ou estiveram em exercício pelo partido `{id}`.  Opcionalmente, pode-se usar os parâmetros `dataInicio`, `dataFim` ou `idLegislatura` para se obter uma lista de deputados filiados ao partido num certo intervalo de tempo. Isso é equivalente ao serviço `/deputados` com filtro por partido, mas é melhor para obter informações sobre membros de partidos já extintos.
    //
    //Future<ResultadoPartidosIDMembros> getMembros(int id, { String dataInicio, String dataFim, Set<int> idLegislatura, String ordenarPor, String ordem, int itens, int pagina, String accept }) async
    test('test getMembros', () async {
      // TODO
    });

    // Informações detalhadas sobre um partido
    //
    //Future<ResultadoPartidosID> getPartido(int id, { String accept }) async
    test('test getPartido', () async {
      // TODO
    });

    // Os partidos políticos que têm ou já tiveram parlamentares em exercício na Câmara
    //
    // Retorna uma lista de dados básicos sobre os partidos políticos que têm ou já tiveram deputados na Câmara. Se não forem passados parâmetros, o serviço retorna os partidos que têm deputados em exercício no momento da requisição.  É possível obter uma lista de partidos representados na Câmara em um certo intervalo de datas ou de legislaturas. Se um intervalo e uma ou mais legislatura(s) não coincidentes forem passados, todos os intervalos de tempo serão somados.  Também se pode fazer busca por uma ou mais sigla(s), mas atenção: em diferentes legislaturas, pode haver mais de um partido usando a mesma sigla.
    //
    //Future<ResultadoPartidos> listarPartidos({ List<String> sigla, List<String> idLegislatura, String dataInicio, String dataFim, int pagina, int itens, String ordem, String ordenarPor, String accept }) async
    test('test listarPartidos', () async {
      // TODO
    });

    // Deputados que são ou foram líderes ou vice-líderes de um partido
    //
    // Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.
    //
    //Future<ResultadoPartidosIDLideresVice> obterLideres(int id, { int pagina, int itens, String accept }) async
    test('test obterLideres', () async {
      // TODO
    });

  });
}
