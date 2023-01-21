import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Reusable_card(colour: Color(0xff1d1e33)),
              ),
              Expanded(
                child: Reusable_card(colour: Color(0xff1d1e33)),
              ),
            ],
          )),
          Expanded(
            child: Reusable_card(colour: Color(0xff1d1e33)),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Reusable_card(colour: Color(0xff1d1e33)),
              ),
              Expanded(
                child: Reusable_card(colour: Color(0xff1d1e33)),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class Reusable_card extends StatelessWidget {

  Reusable_card({@required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour , borderRadius: BorderRadius.circular(10)),
    );
  }
}
