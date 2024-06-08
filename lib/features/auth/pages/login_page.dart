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
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDefault(
        copyWith: EdgeInsets.only(top: context.dimensions.paddingExtraLarge),
        child: SafeArea(
          child: Column(
            children: [
              ImagesWidget.logo(),
              SizedBox(height: context.dimensions.paddingMedium),
              Container(
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.all(context.dimensions.paddingExtraLarge),
                decoration: BoxDecoration(
                  color: context.colors.surface,
                  borderRadius: BorderRadius.circular(
                    context.dimensions.borderRadiusLarge,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 0.5,
                      offset: const Offset(1, 3),
                      color: context.colors.black87.withOpacity(0.10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const LoginFieldsWidget(),
                    SizedBox(height: context.dimensions.paddingExtraLarge),
                    LoginActionButtonsWidget(
                      onLogin: () => widget._navigate(AppRouterEnum.home),
                      onRegister: () {},
                    ),
                    SizedBox(height: context.dimensions.paddingLarge),
                    LoginSocialWidget(
                      actions: {
                        IconButtonType.google: () {},
                        IconButtonType.gitHub: () {},
                        IconButtonType.apple: () {},
                      },
                    ),
                    SizedBox(height: context.dimensions.paddingLarge),
                    LoginHelpButtons(
                      onHelp: () {},
                      onForgotPassword: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
