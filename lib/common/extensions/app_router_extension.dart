import 'package:flutter/cupertino.dart';
import 'package:tec_notes_layout/common/common.dart' show AppRouterEnum;

extension AppRouterExtension on AppRouterEnum {
  String get routePath {
    return switch (this) { AppRouterEnum.root => path, _ => '/$path' };
  }

  String? getParams([Map<String, dynamic>? data]) {
    final hasData = data?.isNotEmpty ?? false;
    final pathParams = params?.params;
    if (pathParams?.isEmpty ?? true) {
      if (hasData) {
        debugPrint("this route don't have parmas");
      }
      return null;
    }

    if (!hasData) {
      throw Exception('this route have parmas');
    }
    final dataParamsLength = data!.length;
    final routeParamsLength = pathParams!.length;

    if (dataParamsLength > routeParamsLength) {
      throw Exception('this route have more parmas than expected');
    } else if (dataParamsLength < routeParamsLength) {
      throw Exception('this route have less parmas than expected');
    }

    return pathParams.keys.map((key) => data[key].toString()).join('/');
  }
}
