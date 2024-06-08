import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tec_notes_layout/common/common.dart';

class AppRouterImpl implements AppRouter {
  factory AppRouterImpl({required IModularNavigator provider}) =>
      _instance ?? AppRouterImpl._(provider: provider);

  AppRouterImpl._({required IModularNavigator provider}) : _provider = provider;

  static AppRouterImpl? _instance;
  final IModularNavigator _provider;

  @override
  void back() {
    _provider.pop();
  }

  @override
  void replace(AppRouterEnum route) {
    _provider
      ..popUntil((_) => false)
      ..pushReplacementNamed(route.routePath);
  }

  @override
  void navigate(AppRouterEnum route, {Map<String, dynamic>? params}) {
    try {
      final pathParams = route.getParams(params) ?? '';
      _provider.pushNamed(
        './${route.path}${pathParams.isEmpty ? '' : '/$pathParams'}',
      );
    } on Exception catch (exception) {
      debugPrint(exception.toString());
    }
  }
}
