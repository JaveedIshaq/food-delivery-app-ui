import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/config/colors.dart';
import 'package:food_delivery_app_ui/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Food Delivery App UI',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline5: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            headline6: TextStyle(fontWeight: FontWeight.bold),
            bodyText2: TextStyle(color: kTextColor),
          )),
      home: HomeView(),
    );
  }
}
