import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttontext, this.onTap});
  final String buttontext;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 10.0),
        child: Center(
          child: Text(
            buttontext,
            style: kLabelStyle,
          ),
        ),
        height: kBottomButtonHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kActiveCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
