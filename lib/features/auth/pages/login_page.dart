import 'package:flutter/material.dart';
import 'package:tec_notes_layout/common/common.dart';
import 'package:tec_notes_layout/features/auth/widgets/widgets.dart';
import 'package:tec_notes_layout/ui/ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    required void Function(AppRouterEnum, {Map<String, dynamic>? params})
        navigate,
    super.key,
  }) : _navigate = navigate;

  final void Function(AppRouterEnum, {Map<String, dynamic>? params}) _navigate;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      context.dismissKeyboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: context.colors.secondary,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          FloatingIconWidget(
            children: ['check', 'anotar', 'lembrar']
                .map<Widget>(
                  (text) => TextWidget(
                    text,
                    style: context.textTheme.bodySmall
                        .copyWith(color: context.colors.onPrimary),
                  ),
                )
                .toList()
              ..add(IconsWidget.pen(color: context.colors.onPrimary)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: context.appSize.height * 0.8,
              child: RoundedCardWidget(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: context.dimensions.paddingSmall,
                        right: context.dimensions.paddingSmall,
                      ),
                      alignment: Alignment.centerRight,
                      child: IconButtonWidget.help(onPressed: () {}),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(context.dimensions.paddingExtraLarge)
                              .copyWith(top: 0),
                      child: MakeLoginSectionWidget(
                        onForgotPassword: () {},
                        onLogin: () => widget._navigate(AppRouterEnum.home),
                        onRegister: () =>
                            widget._navigate(AppRouterEnum.register),
                        socialActions: {
                          IconButtonType.google: () {},
                          IconButtonType.gitHub: () {},
                          IconButtonType.apple: () {},
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
