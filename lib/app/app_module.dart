import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/features/features.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute<HomeModule>(HomeModule.routePath, module: HomeModule()),
  ];
}
