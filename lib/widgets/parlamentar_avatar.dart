import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Utilitário para resolução de CORS em imagens no Flutter Web
class ImageUtils {
  ImageUtils._();

  /// Resolve a URL da imagem da Câmara contornando as restrições de CORS no Flutter Web.
  ///
  /// No navegador, o CanvasKit tenta decodificar a imagem lendo seus bytes via XHR.
  /// Como o servidor da Câmara dos Deputados (`www.camara.leg.br`) não envia o cabeçalho
  /// `Access-Control-Allow-Origin: *`, o navegador bloqueia a requisição.
  /// Usamos o serviço de proxy de imagens `images.weserv.nl` que provê os headers CORS
  /// necessários e cache em CDN Cloudflare.
  static String resolveCORS(String? url) {
    if (url == null || url.trim().isEmpty) return '';
    final trimmed = url.trim();

    if (!kIsWeb) return trimmed;

    // Se for URL da câmara sem CORS nativo, aplica o proxy para navegadores
    if (trimmed.contains('camara.leg.br')) {
      final encoded = Uri.encodeComponent(trimmed);
      return 'https://images.weserv.nl/?url=$encoded';
    }

    return trimmed;
  }
}

/// Componente visual seguro para renderização da foto de parlamentares.
///
/// Trata:
/// - Resolução de CORS no Flutter Web;
/// - Fallback com ícone quando não houver foto ou em caso de erro de rede;
/// - Animação Hero opcional para transições de tela suaves;
/// - Indicador de progresso sutil durante o download.
class ParlamentarAvatar extends StatelessWidget {
  final String? urlFoto;
  final double radius;
  final String? heroTag;

  const ParlamentarAvatar({
    super.key,
    required this.urlFoto,
    this.radius = 28,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedUrl = ImageUtils.resolveCORS(urlFoto);
    final hasValidUrl = resolvedUrl.isNotEmpty;

    final avatarWidget = ClipOval(
      child: Container(
        width: radius * 2,
        height: radius * 2,
        color: Colors.grey.shade200,
        child: hasValidUrl
            ? Image.network(
                resolvedUrl,
                fit: BoxFit.cover,
                width: radius * 2,
                height: radius * 2,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.person_rounded,
                    size: radius * 1.1,
                    color: Colors.grey.shade400,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: SizedBox(
                      width: radius * 0.7,
                      height: radius * 0.7,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
              )
            : Icon(
                Icons.person_rounded,
                size: radius * 1.1,
                color: Colors.grey.shade400,
              ),
      ),
    );

    if (heroTag != null && heroTag!.isNotEmpty) {
      return Hero(
        tag: heroTag!,
        child: avatarWidget,
      );
    }

    return avatarWidget;
  }
}

