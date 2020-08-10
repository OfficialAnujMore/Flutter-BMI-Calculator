import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0XFFFA3B72),
        scaffoldBackgroundColor: Color(0XFFf7f4f4),
        accentColor: Color(0XFFFA3B72),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0XFFFA3B72),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
