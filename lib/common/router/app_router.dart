import 'package:tec_notes_layout/common/router/router.dart' show AppRouterEnum;

mixin AppRouter {
  void back();
  void replace(AppRouterEnum route);
  void navigate(AppRouterEnum route, {Map<String, dynamic>? params});
}
