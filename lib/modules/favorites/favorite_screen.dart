import 'package:easycut/shared/components/components.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.favorite_border,
                  size: 100,
                  color: Color(0xFFC1C2C3),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sorry, There is no Favorite',
                  style: TextStyle(
                    color: Color(0xFFC1C2C3),
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
