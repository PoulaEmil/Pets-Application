// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pets_application/constants.dart';

class Pcard extends StatelessWidget {
  final String name;

  const Pcard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool favourite = true;
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      color: secondaryColor,
      width: 200,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              IconButton(
                icon: favourite == false
                    ? const Icon(
                        Icons.favorite_border,
                      )
                    : const Icon(
                        Icons.favorite,
                      ),
                onPressed: () {
                  favourite == true ? favourite == false : favourite == true;
                },
              )
            ],
          ),
          Image.network(
            "https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1xw:0.74975xh;center,top&resize=1200:*",
            width: double.infinity,
            height: 100,
            fit: BoxFit.fill,
          ),
          const Text(
            "This is Description 1 his is Description 1 his is Description 1 his is Description 1 his is Description 1",
            overflow: TextOverflow.fade,
            style:
                TextStyle(fontSize: 10, color: Color.fromARGB(255, 55, 55, 55)),
          )
        ],
      ),
    );
  }
}
