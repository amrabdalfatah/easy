import 'dart:math' as math;

import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.nameAppBar}) : super(key: key);

  final String nameAppBar;

  @override
  Widget build(BuildContext context) {
    final myKey = GlobalKey<ScaffoldState>();
    final appBar = AppBar(
      backgroundColor: bodyColor,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF5E5E5E),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      title: Text(
        nameAppBar,
        style: const TextStyle(
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
          onPressed: () {},
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
    );
    return Scaffold(
      key: myKey,
      backgroundColor: bodyColor,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return buildCard(
                    nameSalon: 'Salon Mohamed',
                    imageSalon: 'assets/images/slide.png',
                    categ: 'Men',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: buildDrawer(context),
    );
  }
}
