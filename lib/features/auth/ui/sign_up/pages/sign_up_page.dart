import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/controller/sign_up_controller.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/pages/widgets/sign_up_form.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class SignUpPage extends StatelessWidget {
  final controller = AppContainer.get<SignUpController>();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Criar uma conta',
      controller: controller,
      body: SignUpForm(controller: controller),
    );
  }
}
