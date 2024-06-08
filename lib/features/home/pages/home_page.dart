import 'package:flutter/material.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextWidget('home page'),
      ),
    );
  }
}
