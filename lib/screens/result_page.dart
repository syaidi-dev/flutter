import 'package:bmi_calculator_praktikum_m/components/bottom_botton.dart';
import 'package:bmi_calculator_praktikum_m/components/reusable_card.dart';
import 'package:bmi_calculator_praktikum_m/constant.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  static const routeName = '/result';
  const Resultpage(
      {Key key, this.bmiResult, this.resultText, this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final Resultpage resultpage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('HASIL HITUNG'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hasil Hitung',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        resultpage.resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultpage.bmiResult,
                        style: kBmiTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultpage.interpretation,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomBotton(
              buttonText: "HITUNG ULANG",
              onTap: () {
                Navigator.pushNamed(context, '/');
              })
        ],
      ),
    );
  }
}
