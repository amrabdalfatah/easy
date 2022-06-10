import 'package:easycut/modules/register_choice.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../layout/home/home_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuthentication auth;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;
  bool isChecked = false;

  @override
  void initState() {
    Firebase.initializeApp().whenComplete(() {
      auth = FirebaseAuthentication();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    defaultFormField(
                      prefix: Icons.email_outlined,
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      hintText: 'Email Address',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Email must not be Empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    defaultFormField(
                      controller: passwordController,
                      hintText: 'Password',
                      prefix: Icons.lock_outline,
                      suffix: isPasswordShow
                          ? Icons.visibility
                          : Icons.visibility_off,
                      isPassword: isPasswordShow,
                      suffixPressed: () {
                        setState(() {
                          isPasswordShow = !isPasswordShow;
                        });
                      },
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be Empty';
                        }
                        return null;
                      },
                      type: TextInputType.visiblePassword,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          side: const BorderSide(
                            color: Color(0xFF4DA1B0),
                          ),
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: basicColor,
                        ),
                        const Text(
                          'Remeber me',
                          style: TextStyle(color: Color(0xFF4DA1B0)),
                        ),
                      ],
                    ),
                    defaultButton(
                      text: 'Login',
                      function: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const HomeLayout();
                              },
                            ),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Or Login With'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: const Color(0xFF0353A4),
                                width: 1,
                              ),
                            ),
                            child: MaterialButton(
                              child: const Text('Google'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: const Color(0xFF0353A4),
                                width: 1,
                              ),
                            ),
                            child: MaterialButton(
                              child: const Text('Facebook'),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          child: const Text('Register Now'),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const RegisterChoice();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
