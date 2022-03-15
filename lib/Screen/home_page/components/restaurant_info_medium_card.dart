
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.location,
    required this.deliverytime,
    required this.rating,
    required this.press,
  }) : super(key: key);
  final String title, image, location;
  final int deliverytime;
  final double rating;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 3),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 3),
              child: Text(
                location,
                style:  TextStyle(color: kBodyTextColor),
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(fontSize: 14, color: Colors.black),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 3,
                        vertical: defaultPadding / 9),
                    decoration: BoxDecoration(
                        color: kActiveColor,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    child: Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Space(),
                  Text("$deliverytime min"),
                  Space(),
                  CircleAvatar(
                    radius: 2,
                  ),
                  Text("Free delivery")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
      width: 7,
    );
  }
}
