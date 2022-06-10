import 'package:carousel_slider/carousel_slider.dart';
import 'package:easycut/shared/components/components.dart';
import 'package:easycut/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final List<String> _imgList = [
    'assets/images/slide.png',
    'assets/images/slide_woman.png',
  ];

  final List<String> nameSaloon = [
    'Saloon Ahmed',
    'Anjelina Beauty Center',
  ];

  List<Widget> imageSliders = [];

  @override
  Widget build(BuildContext context) {
    imageSliders = _imgList.map((item) {
      setState(() {
        index = _imgList.indexOf(item);
      });
      return Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                    ),
                    child: Center(
                      child: Text(
                        nameSaloon[index].toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
    }).toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 158,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                buildCategory(
                    imageCategory: 'assets/images/macas.png',
                    nameCategory: 'Men',
                    context: context),
                const SizedBox(
                  width: 20,
                ),
                buildCategory(
                    imageCategory: 'assets/images/mesht.png',
                    nameCategory: 'Women',
                    context: context),
                const SizedBox(
                  width: 20,
                ),
                buildCategory(
                    imageCategory: 'assets/images/shafra.png',
                    nameCategory: 'Salon',
                    context: context),
                const SizedBox(
                  width: 20,
                ),
                buildCategory(
                    imageCategory: 'assets/images/wedding.png',
                    nameCategory: 'Wedding',
                    context: context),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 25, bottom: 11),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Check Last Salons',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: basicColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
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
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(21),
            height: 120,
            width: double.infinity,
            child: Image.asset(
              'assets/images/coca.png',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 11),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Highest Rate',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: basicColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
