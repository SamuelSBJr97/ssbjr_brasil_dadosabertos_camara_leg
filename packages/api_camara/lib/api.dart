//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/blocos_api.dart';
part 'api/deputados_api.dart';
part 'api/eventos_api.dart';
part 'api/frentes_api.dart';
part 'api/grupos_api.dart';
part 'api/legislaturas_api.dart';
part 'api/lideres_api.dart';
part 'api/partidos_api.dart';
part 'api/proposies_api.dart';
part 'api/referncias_api.dart';
part 'api/rgos_api.dart';
part 'api/votaes_api.dart';

part 'model/bancada_lideres.dart';
part 'model/bloco.dart';
part 'model/bloco_id.dart';
part 'model/deputado.dart';
part 'model/deputado_despesas.dart';
part 'model/deputado_discurso.dart';
part 'model/deputado_historico.dart';
part 'model/deputado_id.dart';
part 'model/deputado_mandato_externo.dart';
part 'model/deputado_ocupacoes.dart';
part 'model/deputado_orgao.dart';
part 'model/deputado_profissoes.dart';
part 'model/deputado_ultimo_status.dart';
part 'model/efeitos_registrados.dart';
part 'model/eventos.dart';
part 'model/eventos_id.dart';
part 'model/fase_evento.dart';
part 'model/frente.dart';
part 'model/frente_id.dart';
part 'model/gabinete.dart';
part 'model/grupos.dart';
part 'model/grupos_id.dart';
part 'model/grupos_membros.dart';
part 'model/historico.dart';
part 'model/legislatura.dart';
part 'model/legislatura_id_lideres.dart';
part 'model/legislatura_id_mesa.dart';
part 'model/link.dart';
part 'model/local_camara.dart';
part 'model/membro.dart';
part 'model/membro_frente.dart';
part 'model/orgao.dart';
part 'model/orgao_detalhe.dart';
part 'model/orgao_membros.dart';
part 'model/orientacao.dart';
part 'model/parlamentar_lideres.dart';
part 'model/partido.dart';
part 'model/partido_id.dart';
part 'model/partido_id_status.dart';
part 'model/partido_lider.dart';
part 'model/partidos_id_lideres.dart';
part 'model/pauta.dart';
part 'model/proposicao_autor.dart';
part 'model/proposicao_retorno_principal.dart';
part 'model/proposicao_tema.dart';
part 'model/proposicao_tramitacao.dart';
part 'model/proposicoes_relacionadas.dart';
part 'model/referencia.dart';
part 'model/referencia_deputado.dart';
part 'model/referencia_evento.dart';
part 'model/referencia_orgao.dart';
part 'model/referencia_proposicao.dart';
part 'model/requerimento.dart';
part 'model/resultado_bloco.dart';
part 'model/resultado_bloco_id.dart';
part 'model/resultado_deputado.dart';
part 'model/resultado_deputado_despesas.dart';
part 'model/resultado_deputado_discurso.dart';
part 'model/resultado_deputado_eventos.dart';
part 'model/resultado_deputado_historico.dart';
part 'model/resultado_deputado_id.dart';
part 'model/resultado_deputado_mandato_externo.dart';
part 'model/resultado_deputado_orgaos.dart';
part 'model/resultado_deputado_profissoes.dart';
part 'model/resultado_evento_orgao.dart';
part 'model/resultado_eventos.dart';
part 'model/resultado_eventos_deputado.dart';
part 'model/resultado_eventos_id.dart';
part 'model/resultado_eventos_pauta.dart';
part 'model/resultado_frente_id.dart';
part 'model/resultado_frentes.dart';
part 'model/resultado_grupos.dart';
part 'model/resultado_grupos_historico.dart';
part 'model/resultado_grupos_id.dart';
part 'model/resultado_grupos_membros.dart';
part 'model/resultado_id_deputado_membro.dart';
part 'model/resultado_legislatura_id_lideres.dart';
part 'model/resultado_legislatura_id_mesa.dart';
part 'model/resultado_legislaturas.dart';
part 'model/resultado_legislaturas_detalhe.dart';
part 'model/resultado_membro_frente.dart';
part 'model/resultado_ocupacoes_deputado.dart';
part 'model/resultado_orgao_detalhe.dart';
part 'model/resultado_orgao_eventos.dart';
part 'model/resultado_orgao_membros.dart';
part 'model/resultado_orgaos.dart';
part 'model/resultado_partidos.dart';
part 'model/resultado_partidos_id.dart';
part 'model/resultado_partidos_id_lideres_vice.dart';
part 'model/resultado_partidos_id_membros.dart';
part 'model/resultado_proposicoes.dart';
part 'model/resultado_proposicoes_autores.dart';
part 'model/resultado_proposicoes_object.dart';
part 'model/resultado_proposicoes_relacionadas.dart';
part 'model/resultado_proposicoes_tema.dart';
part 'model/resultado_proposicoes_tramitacao.dart';
part 'model/resultado_referencia_sub_resource_referencia_deputado.dart';
part 'model/resultado_referencia_sub_resource_referencia_evento.dart';
part 'model/resultado_referencia_sub_resource_referencia_orgao.dart';
part 'model/resultado_referencia_sub_resource_referencia_proposicao.dart';
part 'model/resultado_referencias.dart';
part 'model/resultado_votacoes.dart';
part 'model/resultado_votacoes_id.dart';
part 'model/resultado_votacoes_id_orientacoes.dart';
part 'model/resultado_votacoes_id_votos.dart';
part 'model/ultima_apresentacao_proposicao.dart';
part 'model/ultimo_status.dart';
part 'model/ultimo_status_id.dart';
part 'model/votacao.dart';
part 'model/votacao_id.dart';
part 'model/votos.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
