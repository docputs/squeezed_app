import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:squeezed_app/features/auth/ui/sign_in/controllers/sign_in_controller.dart';
import 'package:squeezed_app/shared/app_container.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';
import 'package:squeezed_app/widgets/custom_password_field.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';

class SignInPage extends StatelessWidget {
  final controller = AppContainer.get<SignInController>();

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Fazer login',
      controller: controller,
      body: Column(
        children: [
          CustomTextField(
            labelText: 'E-mail',
            onChanged: controller.changeEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 20),
          CustomPasswordField(
            labelText: 'Senha',
            onChanged: controller.changePassword,
          ),
          const SizedBox(height: 40),
          Observer(
            builder: (_) => CustomElevatedButton(
              text: 'Entrar',
              onPressed: controller.isFormValid && !controller.isLoading ? () => controller.submit() : null,
            ),
          ),
          const SizedBox(height: 20),
          _buildCreateAccountLink(),
        ],
      ),
    );
  }

  Widget _buildCreateAccountLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Não tem uma conta?'),
        TextButton(
          onPressed: controller.pushSignUpPage,
          child: const Text('Crie uma'),
        ),
      ],
    );
  }
}
