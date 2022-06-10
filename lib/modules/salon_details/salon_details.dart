import 'dart:math' as math;

import 'package:easycut/modules/search/search_screen.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class SalonDetailsScreen extends StatelessWidget {
  SalonDetailsScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                child: Image.asset(
                  'assets/images/slide.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Salon Elsada',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5E5E5E),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 12,
                      color: starColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: starColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: starColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: starColor,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: starColor,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 14),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF414344),
              ),
            ),
            const Text(
              'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت',
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFFA0A0A0),
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'Contact',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF414344),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 14),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.phone_iphone,
                        color: Color(0xFFA0A0A0),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '01016716496',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFA2A2A2),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFFA0A0A0),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Elmokatam - Elnasr Elgedida',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFA2A2A2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text('Offers'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Another Pictures',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFF414344),
              ),
            ),
            SizedBox(
              height: 90,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 130,
                      height: 80,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(7)),
                        child: Image.asset(
                          'assets/images/slide.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // const SizedBox(height: 15),
            // Row(
            //   children: [
            //     defaultButton(
            //       text: 'Booking Now',
            //       function: () {},
            //     ),
            //     defaultButton(
            //       text: 'Add Comment',
            //       function: () {},
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
