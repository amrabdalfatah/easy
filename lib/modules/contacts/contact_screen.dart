import 'dart:math' as math;

import 'package:easycut/modules/search/search_screen.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final commentController = TextEditingController();
  final myKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        backgroundColor: bodyColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xFF5E5E5E),
          ),
        ),
        actions: [
          IconButton(
            icon: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Image.asset(
                'assets/images/search.png',
                height: 20,
                width: 20,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
          IconButton(
            icon: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Image.asset(
                'assets/images/menu.png',
                height: 20,
                width: 20,
              ),
            ),
            onPressed: () {
              myKey.currentState!.openDrawer();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(60),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              defaultFormField(
                controller: nameController,
                prefix: Icons.person_outline,
                hintText: 'Name',
                type: TextInputType.name,
              ),
              defaultFormField(
                controller: phoneController,
                prefix: Icons.phone_iphone,
                hintText: 'Phone Number',
                type: TextInputType.phone,
              ),
              Card(
                elevation: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 140,
                    child: Center(
                      child: TextFormField(
                        maxLines: 10,
                        style: const TextStyle(
                          color: Color(0xFF4DA1B0),
                        ),
                        controller: commentController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Color(0xFFBBBABA),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              defaultButton(text: 'Send', function: () {})
            ],
          ),
        ),
      ),
    );
  }
}
