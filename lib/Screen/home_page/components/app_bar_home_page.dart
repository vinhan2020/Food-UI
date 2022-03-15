
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppBarHomPage extends StatelessWidget {
  const AppBarHomPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        children: [
          Text(
            "Delivery to".toUpperCase(),
            style: Theme.of(context).textTheme.caption!.copyWith(
                color: kActiveColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "San Francisco",
            style: TextStyle(color: kBodyTextColor),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(primary: kActiveColor),
          child: const Text(
            "Filter",
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
