import 'package:tec_notes_layout/common/router/app_router_path_params.dart';

enum AppRouterEnum {
  root(path: '/'),
  auth(path: 'auth'),
  register(path: 'register'),
  home(path: 'home'),
  ;

  final String path;
  final AppRouterPathParams? params;

  const AppRouterEnum({
    required this.path,
    this.params,
  });
}
