import 'package:easycut/layout/home/home_layout.dart';
import 'package:easycut/modules/categories/category_screen.dart';
import 'package:easycut/modules/contacts/contact_screen.dart';
import 'package:easycut/modules/login/login_screen.dart';
import 'package:easycut/modules/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

Widget defaultListTile({
  required IconData icon,
  required String title,
  required Function() function,
  Color colorIcon = const Color(0xFFA0A0A0),
  Color titleColor = const Color(0xFFA0A0A0),
}) =>
    ListTile(
      leading: Icon(
        icon,
        color: colorIcon,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          color: titleColor,
        ),
      ),
      onTap: function,
    );

Widget buildDrawer(BuildContext context) => SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 172,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bkimage.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/profile.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 9),
                            const Text(
                              'Layla Mohamed Ibrahim',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        defaultListTile(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeLayout()));
                          },
                          icon: Icons.home,
                          title: 'Home',
                          titleColor: const Color(0xFF023A73),
                          colorIcon: const Color(0xFF023A73),
                        ),
                        defaultListTile(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileScreen()));
                          },
                          icon: Icons.person_outline,
                          title: 'Profile',
                        ),
                        defaultListTile(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ContactScreen()));
                          },
                          icon: Icons.call,
                          title: 'Contact us',
                        ),
                        defaultListTile(
                          function: () {},
                          icon: Icons.flag_outlined,
                          title: 'English',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xFFA0A0A0),
            ),
            defaultListTile(
              function: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              icon: Icons.logout,
              title: 'Log Out',
              titleColor: const Color(0xFFFF0000),
              colorIcon: const Color(0xFFFF0000),
            ),
          ],
        ),
      ),
    );

Widget defaultButton({
  required String text,
  required Function() function,
  double width = double.infinity,
  Color background = basicColor,
  bool isUpperCase = true,
  double radius = 10.0,
}) =>
    Container(
      width: width,
      height: 45.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

Widget buildCategory({
  required BuildContext context,
  required String nameCategory,
  required String imageCategory,
}) =>
    GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoryScreen(
                  nameAppBar: nameCategory,
                )));
      },
      child: Column(
        children: [
          Container(
            height: 65,
            width: 65,
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Center(
              child: Image.asset(
                imageCategory,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            nameCategory,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );

Widget buildCard({
  required String nameSalon,
  required String imageSalon,
  required String categ,
}) =>
    Card(
      color: Colors.white,
      elevation: 5,
      child: SizedBox(
        width: 140,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
              ),
              child: SizedBox(
                height: 90,
                child: Image.asset(
                  imageSalon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        nameSalon,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: basicColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.phone_android_sharp,
                            color: text3Color,
                            size: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '01093174220',
                            style: TextStyle(fontSize: 8, color: text3Color),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: text3Color,
                            size: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Al-Nasr Algedida, Elmokatam',
                            style: TextStyle(fontSize: 8, color: text3Color),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            categ,
                            style: const TextStyle(
                                fontSize: 10, color: text3Color),
                          )),
                          const SizedBox(
                            width: 3,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star_border,
                                color: starColor,
                                size: 10,
                              ),
                              Icon(
                                Icons.star_border,
                                color: starColor,
                                size: 10,
                              ),
                              Icon(
                                Icons.star_border,
                                color: starColor,
                                size: 10,
                              ),
                              Icon(
                                Icons.star_border,
                                color: starColor,
                                size: 10,
                              ),
                              Icon(
                                Icons.star_border,
                                color: starColor,
                                size: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required IconData prefix,
  required TextInputType type,
  String? Function(String?)? validate,
  IconData? suffix,
  Function(String)? onSubmit,
  Function(String)? onChange,
  Function()? suffixPressed,
  String? hintText,
  bool isPassword = false,
}) =>
    Card(
      elevation: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 55,
          child: Center(
            child: TextFormField(
              style: const TextStyle(
                color: Color(0xFF4DA1B0),
              ),
              controller: controller,
              keyboardType: type,
              onFieldSubmitted: onSubmit,
              onChanged: onChange,
              validator: validate,
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFFBBBABA),
                ),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                prefixIcon: Icon(
                  prefix,
                  color: const Color(0xFF79A4CF),
                ),
                suffixIcon: suffix != null
                    ? IconButton(
                        icon: Icon(
                          suffix,
                          color: const Color(0xFF79A4CF),
                        ),
                        onPressed: suffixPressed,
                      )
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
