import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/home/pages/home_page.dart';

class HomeModule extends Module {
  static String get routePath => AppRouterEnum.home.routePath;

  @override
  final List<ModularRoute> routes = [
    ChildRoute<HomePage>(
      '/',
      child: (_, __) => const HomePage(),
      transition: TransitionType.fadeIn,
      duration: const Duration(milliseconds: 100),
    ),
  ];
}
