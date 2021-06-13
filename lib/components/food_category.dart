import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/config/colors.dart';

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
