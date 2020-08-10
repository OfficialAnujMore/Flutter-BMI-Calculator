import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/reuseable_buttons.dart';
import 'package:bmi_calculator/app_brain.dart';
import 'package:bmi_calculator/components/rounded_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
//  Color maleCardColor = inactiveCardColor;
//  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender;
  int height = 190;
  int weight = 70;
  int age = 20;
//  void updateColor(Gender selectedGender) {
//    //male==1
//    if (selectedGender == Gender.male) {
//      if (maleCardColor == inactiveCardColor) {
//        maleCardColor = activeCardColor;
//        femaleCardColor = inactiveCardColor;
//        print("Male inactve");
//      } else {
//        maleCardColor = activeCardColor;
//      }
//    }
//    //female == 2
//    if (selectedGender == Gender.female) {
//      if (femaleCardColor == inactiveCardColor) {
//        femaleCardColor = activeCardColor;
//        maleCardColor = inactiveCardColor;
//      } else {
//        femaleCardColor = activeCardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFd6194f),
          title: Text('BMI'),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: Container(
                          child: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: "MALE",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: Container(
                          child: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: "FEMALE",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "HEIGHT",
                            style: kLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                "cm",
                                style: kLabelStyle,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              activeTrackColor: Colors.white,
                              thumbColor: Colors.purple,
//                              overlayColor: Colors.blueGrey,
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                              inactiveColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Weight",
                            style: kLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                "kg",
                                style: kLabelStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                    weight <= 0 ? weight = 0 : weight--;
//                                    if (weight <= 0) {
//                                      weight = 0;
//                                    }
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: kLabelStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                "yrs",
                                style: kLabelStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                    age <= 1 ? age = 1 : age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                    age >= 100 ? age = 100 : age;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttontext: "CALCULATE",
                onTap: () {
                  CalculateBrain calc =
                      CalculateBrain(height: height, weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                }),
          ],
        ));
  }
}

//Color(0XFFFA3B72),
