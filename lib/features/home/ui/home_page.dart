import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isScrollable: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('home'),
          const SizedBox(height: 40),
          CustomElevatedButton(
            text: 'Logout',
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
    );
  }
}
