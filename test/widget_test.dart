import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:ssbjr_brasil_dadosabertos_camara_leg/pages/home_page.dart';
import 'package:ssbjr_brasil_dadosabertos_camara_leg/services/camara_service.dart';
import 'package:ssbjr_brasil_dadosabertos_camara_leg/state/app_state.dart';

void main() {
  testWidgets('Radar da Câmara Desktop layout test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    final service = CamaraService();
    final appState = AppState(service);

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<AppState>.value(value: appState),
        ],
        child: const MaterialApp(
          home: HomePage(),
        ),
      ),
    );

    expect(find.text('Radar da Câmara'), findsOneWidget);
    expect(find.text('Mapa Interativo do Brasil'), findsOneWidget);
    expect(find.text('Aplicar Filtros'), findsOneWidget);
  });

  testWidgets('Radar da Câmara Mobile layout test (<= 800px)', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    final service = CamaraService();
    final appState = AppState(service);

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<AppState>.value(value: appState),
        ],
        child: const MaterialApp(
          home: HomePage(),
        ),
      ),
    );

    expect(find.text('Radar da Câmara'), findsOneWidget);
    expect(find.text('Mapa Interativo do Brasil'), findsOneWidget);
    expect(find.text('Aplicar Filtros'), findsOneWidget);
  });
}
