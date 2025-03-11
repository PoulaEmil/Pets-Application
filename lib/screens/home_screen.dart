import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/square_card.dart';
import '../widgets/wide_card.dart';

// ignore: camel_case_types
class home_Page extends StatelessWidget {
  const home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor.withOpacity(.7),
      appBar: AppBar(
        leading: Image.network(
          "https://cdn-icons-png.flaticon.com/512/5930/5930063.png",
        ),
        backgroundColor: secondaryColor,
        title: const Text("Welcome to PetZinia"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person_outline_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Pcard(
                name: "Dog",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            WideCard(name: "DOG"),
          ],
        ),
      ),
    );
  }
}
