import 'package:easycut/modules/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Widget gotoLoginScreen() {
    return const LoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
          const Duration(seconds: 5),
          () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) => gotoLoginScreen(),
                ),
              )),
      builder: (ctx, snapshot) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 300,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
