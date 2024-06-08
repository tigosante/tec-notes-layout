import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/features.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [RouterModule()];

  @override
  final List<ModularRoute> routes = [
    RedirectRoute('/', to: '${AuthModule.routePath}/'),
    ModuleRoute<HomeModule>(HomeModule.routePath, module: HomeModule()),
    ModuleRoute<AuthModule>(AuthModule.routePath, module: AuthModule()),
  ];
}
