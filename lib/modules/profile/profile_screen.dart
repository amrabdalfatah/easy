import 'dart:math' as math;

import 'package:easycut/modules/search/search_screen.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final myKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      backgroundColor: Colors.white,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[500],
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Layla Mohamed Ibrahim',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF023A73),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Cairo - Elmokatam',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF023A73),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '01000000000',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF023A73),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ceo@domain.com',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF023A73),
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '************',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF023A73),
                    ),
                  ),
                  SizedBox(height: 28),
                ],
              ),
            ),
            defaultButton(text: 'Edit My Data', function: () {}),
          ],
        ),
      ),
    );
  }
}
