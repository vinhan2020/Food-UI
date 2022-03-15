
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Partners",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(primary: kActiveColor),
                  child: const Text("Sell All"))
            ]),
      ),
    );
  }
}
