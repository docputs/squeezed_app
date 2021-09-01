import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isScrollable: false,
      body: Center(
        child: CustomElevatedButton(
          horizontallyExpanded: false,
          text: 'Logout',
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        ),
      ),
    );
  }
}
