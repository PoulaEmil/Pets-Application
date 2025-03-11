// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pets_application/constants.dart';

class WideCard extends StatelessWidget {
  final String name;

  const WideCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool favourite = true;
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      color: secondaryColor,
      width: 650,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 22, color: fontColor, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            width: 8,
          ),
          Image.network(
            "https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1xw:0.74975xh;center,top&resize=1200:*",
            width: 80,
            height: 70,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 8,
          ),
          const SizedBox(
            width: 250,
            child: Text(
              "This is Description 1 his is Description 1 his is Description 1 his is Description 1 his is Description 1",
              overflow: TextOverflow.fade,
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 55, 55, 55)),
            ),
          ),
          IconButton(
            icon: favourite == false
                ? const Icon(
                    Icons.favorite,
                  )
                : const Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 3, 48, 85),
                  ),
            onPressed: () {
              favourite == true ? favourite == false : favourite == true;
            },
          ),
        ],
      ),
    );
  }
}
