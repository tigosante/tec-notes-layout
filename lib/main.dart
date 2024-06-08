import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/app/app.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
      ),
    ),
  );
}
