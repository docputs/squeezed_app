import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/auth/ui/sign_up/controller/sign_up_controller.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';
import 'package:squeezed_app/widgets/custom_password_field.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  final SignUpController controller;

  const SignUpForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          labelText: 'E-mail',
          onChanged: controller.changeEmail,
        ),
        const SizedBox(height: 20),
        CustomPasswordField(
          labelText: 'Senha',
          onChanged: controller.changePassword,
          showMinimumLengthWarning: true,
        ),
        const SizedBox(height: 20),
        CustomPasswordField(
          labelText: 'Confirme sua senha',
          onChanged: controller.changeConfirmPassword,
        ),
        const SizedBox(height: 40),
        Observer(
          builder: (_) => CustomElevatedButton(
            text: 'Criar conta',
            onPressed: controller.isFormValid && !controller.isLoading ? () => controller.submit() : null,
          ),
        ),
      ],
    );
  }
}
