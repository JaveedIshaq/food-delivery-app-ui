import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app_ui/config/colors.dart';

var searchInputDecoration = InputDecoration(
  border: InputBorder.none,
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  prefixIcon: Padding(
    padding: const EdgeInsets.all(8.0),
    child: SvgPicture.asset(
      "assets/icons/search.svg",
      color: kTextColor,
      height: 15,
      width: 15,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kTextColor),
    borderRadius: BorderRadius.circular(15),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor.withOpacity(0.4)),
    borderRadius: BorderRadius.circular(15),
  ),
);
