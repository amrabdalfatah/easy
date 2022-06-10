import 'package:easycut/modules/register/register_screen.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:flutter/material.dart';

class RegisterChoice extends StatefulWidget {
  const RegisterChoice({Key? key}) : super(key: key);

  @override
  State<RegisterChoice> createState() => _RegisterChoiceState();
}

class _RegisterChoiceState extends State<RegisterChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultButton(
                text: 'Register as A Client',
                function: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => RegisterScreen()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              defaultButton(
                text: 'Register as A owner',
                background: Colors.red,
                function: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => RegisterScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
