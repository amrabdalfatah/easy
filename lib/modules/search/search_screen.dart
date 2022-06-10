import 'dart:math' as math;

import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final myKey = GlobalKey<ScaffoldState>();
  final nameSearch = TextEditingController();
  final List<Widget> listCard = [
    buildCard(
      nameSalon: 'Salon Elsaada',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Anjilina Jolly',
      imageSalon: 'assets/images/slide_woman.png',
      categ: 'Women',
    ),
    buildCard(
      nameSalon: 'Salon Ahmed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Salon Mohamed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Salon Elsaada',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Anjilina Jolly',
      imageSalon: 'assets/images/slide_woman.png',
      categ: 'Women',
    ),
    buildCard(
      nameSalon: 'Salon Ahmed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Salon Mohamed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Salon Elsaada',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Anjilina Jolly',
      imageSalon: 'assets/images/slide_woman.png',
      categ: 'Women',
    ),
    buildCard(
      nameSalon: 'Salon Ahmed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
    buildCard(
      nameSalon: 'Salon Mohamed',
      imageSalon: 'assets/images/slide.png',
      categ: 'Men',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
      title: const Text(
        'Search',
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
            defaultFormField(
              type: TextInputType.name,
              hintText: 'Enter Word Search',
              prefix: Icons.search,
              controller: nameSearch,
              suffix: Icons.filter_list,
            ),
            const SizedBox(height: 22),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                ),
                itemCount: listCard.length,
                itemBuilder: (context, index) {
                  return listCard[index];
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
