import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/components/floating_rouded_plus_button.dart';
import 'package:food_delivery_app_ui/config/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingRoudedPlusButton(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, right: 20),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("assets/icons/menu.svg")),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCategory(title: "All", isActive: true),
                FoodCategory(title: "Italian"),
                FoodCategory(title: "Asian"),
                FoodCategory(title: "Chinese"),
                FoodCategory(title: "Burgers"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FoodCategory extends StatelessWidget {
  const FoodCategory({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button!.copyWith(
              color: isActive ? kPrimaryColor : kTextColor,
            ),
      ),
    );
  }
}
