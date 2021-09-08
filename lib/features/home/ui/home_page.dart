import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Squeezed',
      body: Column(
        children: [
          Text('Criar novo treino'),
        ],
      ),
    );
  }
}
