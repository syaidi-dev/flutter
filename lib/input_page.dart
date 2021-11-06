import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // ini untuk jenis kelamin
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),

            //ini untuk tinggi
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            )),

            //ini untuk berat dan umur
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            )),

            //ini tombol untuk menghitung(calculate)
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ))
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 179,
    );
  }
}
