import 'package:flutter/material.dart';
import 'package:pets_application/widgets/square_card.dart';
import 'package:pets_application/widgets/wide_card.dart';

class HomeHome extends StatelessWidget {
  const HomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
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
    ));
  }
}
