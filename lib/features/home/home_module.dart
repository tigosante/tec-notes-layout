import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/home/home.dart';

class HomeModule extends Module {
  static String get routePath => AppRouterEnum.root.path;

  @override
  final List<ModularRoute> routes = [
    ChildRoute<HomePage>(
      '/',
      child: (_, __) => const HomePage(),
    ),
  ];
}
