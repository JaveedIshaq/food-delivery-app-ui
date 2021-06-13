import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/config/colors.dart';

class FloatingRoudedPlusButton extends StatelessWidget {
  const FloatingRoudedPlusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: kPrimaryColor.withOpacity(0.5)),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
        child: SvgPicture.asset("assets/icons/plus.svg"),
      ),
    );
  }
}
