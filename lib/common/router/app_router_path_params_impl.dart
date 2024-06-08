import 'package:tec_notes_layout/common/router/app_router_path_params.dart';

class AppRouterPathParamsImpl implements AppRouterPathParams {
  const AppRouterPathParamsImpl(this.params);

  @override
  final Map<String, Type> params;
}
