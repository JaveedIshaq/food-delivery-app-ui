import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/components/floating_rouded_plus_button.dart';
import 'package:food_delivery_app_ui/components/food_category.dart';
import 'package:food_delivery_app_ui/components/food_item_card.dart';
import 'package:food_delivery_app_ui/config/typography.dart';
import 'package:food_delivery_app_ui/views/food_item_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingRoudedPlusButton(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 20),
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset("assets/icons/menu.svg")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: TextField(
                decoration: searchInputDecoration,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  FoodItemCard(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return FoodItemView();
                        }),
                      );
                    },
                    title: "Vegan salad bowl",
                    image: "assets/images/image_1.png",
                    price: 20,
                    calories: "420Kcal",
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                  ),
                  FoodItemCard(
                    press: () {},
                    title: "Vegan salad bowl",
                    image: "assets/images/image_2.png",
                    price: 20,
                    calories: "420Kcal",
                    description:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
