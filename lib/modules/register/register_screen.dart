import 'package:easycut/layout/home/home_layout.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  bool isPasswordShow = true;

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
                      prefix: Icons.person_outline,
                      controller: nameController,
                      type: TextInputType.name,
                      hintText: 'Name',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Name must not be Empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    defaultFormField(
                      prefix: Icons.phone_iphone,
                      controller: phoneController,
                      type: TextInputType.phone,
                      hintText: 'Phone Number',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Phone must not be Empty';
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
                    const SizedBox(height: 15),
                    defaultFormField(
                      controller: passwordConfirmController,
                      hintText: 'confirm Password',
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
                    const SizedBox(height: 15),
                    defaultButton(
                      text: 'New Account',
                      function: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeLayout()));
                        }
                      },
                    ),
                    const SizedBox(height: 15),
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
