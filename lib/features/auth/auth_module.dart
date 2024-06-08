import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/pages/login_page.dart';
import 'package:tec_notes_layout/features/home/pages/home_page.dart';

class AuthModule extends Module {
  static String get routePath => AppRouterEnum.auth.routePath;

  @override
  final List<ModularRoute> routes = [
    ChildRoute<HomePage>(
      '/',
      child: (context, _) => LoginPage(
        navigate: (route, {params}) => context.read<AppRouter>().replace(route),
      ),
      transition: TransitionType.fadeIn,
    ),
  ];
}
