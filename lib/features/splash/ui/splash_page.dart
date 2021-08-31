import 'package:flutter/material.dart';
import 'package:squeezed_app/features/splash/ui/controllers/splash_controller.dart';
import 'package:squeezed_app/shared/app_container.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _controller = AppContainer.get<SplashController>();

  @override
  void initState() {
    super.initState();
    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
