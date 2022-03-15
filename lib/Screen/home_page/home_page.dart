// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app_demo/constants.dart';
import 'package:food_app_demo/demoData.dart';
import 'components/app_bar_home_page.dart';
import 'components/images_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarHomPage(),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImagesCarousel(),
            ),
          ),
          const SectionTitle(),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      image: demoMediumCardData[index]['image'],
                      location: demoMediumCardData[index]['location'],
                      deliverytime: demoMediumCardData[index]['delivertTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Image.asset("assets/images/Banner.png"),
            ),
          )
        ],
      ),
    );
  }
}
