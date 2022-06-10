import 'dart:math' as math;

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:easycut/modules/bookings/booking_screen.dart';
import 'package:easycut/modules/favorites/favorite_screen.dart';
import 'package:easycut/modules/home/home_screen.dart';
import 'package:easycut/modules/notifications/notification_screen.dart';
import 'package:easycut/modules/search/search_screen.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;
  final myKey = GlobalKey<ScaffoldState>();

  final screens = [
    HomeScreen(),
    BookingScreen(),
    NotificationScreen(),
    FavoriteScreen(),
  ];

  final List<Widget> titleAppBar = [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          'Hello, ',
          style: TextStyle(
            fontSize: 14.0,
            color: text2Color,
          ),
        ),
        Text(
          'Layla',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: text1Color,
            fontSize: 14.0,
          ),
        ),
      ],
    ),
    const Text(
      'Booking',
      style: TextStyle(
        fontSize: 14.0,
        color: Color(0xFF5E5E5E),
      ),
    ),
    const Text(
      'Notifications',
      style: TextStyle(
        fontSize: 14.0,
        color: Color(0xFF5E5E5E),
      ),
    ),
    const Text(
      'Favorites',
      style: TextStyle(
        fontSize: 14.0,
        color: Color(0xFF5E5E5E),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: bodyColor,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
      ),
      title: titleAppBar[_currentIndex],
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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchScreen()));
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
    );

    return Scaffold(
      backgroundColor: bodyColor,
      key: myKey,
      appBar: appBar,
      body: screens[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: basicColor,
        strokeColor: const Color(0x300c18fb),
        unSelectedColor: text3Color,
        backgroundColor: Colors.white,
        borderRadius: const Radius.circular(20.0),
        items: [
          CustomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: _currentIndex == 0 ? basicColor : Colors.white,
              child: Icon(
                Icons.home,
                color: _currentIndex == 0 ? Colors.white : text3Color,
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: _currentIndex == 1 ? basicColor : Colors.white,
              child: Icon(
                Icons.calendar_today_outlined,
                color: _currentIndex == 1 ? Colors.white : text3Color,
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: _currentIndex == 2 ? basicColor : Colors.white,
              child: Icon(
                Icons.notifications_rounded,
                color: _currentIndex == 2 ? Colors.white : text3Color,
              ),
            ),
          ),
          CustomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: _currentIndex == 3 ? basicColor : Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: _currentIndex == 3 ? Colors.white : text3Color,
              ),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        isFloating: true,
      ),
      drawer: buildDrawer(context),
    );
  }
}
