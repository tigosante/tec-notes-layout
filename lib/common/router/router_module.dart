import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/common/router/app_router_impl.dart';

class RouterModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton<AppRouter>(
          export: true,
          (_) => AppRouterImpl(
            provider:
                (Modular..setInitialRoute(AppRouterEnum.root.routePath)).to,
          ),
        ),
      ];
}
