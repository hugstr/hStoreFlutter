import 'package:flutter/material.dart';
import 'package:hstore_flutter/constants.dart';
import 'package:hstore_flutter/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HSample store app',
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: kPrimaryColor,
        accentColorBrightness: Brightness.light,
      ),
      home: HomeScreen(),
    );
  }
}
