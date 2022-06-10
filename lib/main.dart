import 'package:easycut/modules/salon_details/salon_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EasyCut());
}

class EasyCut extends StatelessWidget {
  const EasyCut({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SalonDetailsScreen(),
    );
  }
}
