import 'package:flutter/material.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({
    required RouterDelegate<Object>? routerDelegate,
    required RouteInformationParser<Object>? routeInformationParser,
    super.key,
  })  : _routerDelegate = routerDelegate,
        _routeInformationParser = routeInformationParser;

  final RouterDelegate<Object>? _routerDelegate;
  final RouteInformationParser<Object>? _routeInformationParser;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    final theme =
        AppTheme(darkColors: AppColors.dark(), lightColors: AppColors.light());
    return MaterialApp.router(
      title: 'Tec Notes',
      theme: theme.light(),
      darkTheme: theme.dark(),
      debugShowCheckedModeBanner: false,
      routerDelegate: widget._routerDelegate,
      routeInformationParser: widget._routeInformationParser,
    );
  }
}
