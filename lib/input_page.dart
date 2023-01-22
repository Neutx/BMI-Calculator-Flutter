import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icon_content.dart';
import './reusable_card.dart';

const bottomContainerHeight = 70.00;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

enum Gender {
  male,female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

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
                  child: Reusable_card(
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                colour: selectedGender==Gender.male?activeCardColor:inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              )),
              Expanded(
                  child: Reusable_card(
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                colour: selectedGender==Gender.female?activeCardColor:inactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              )),
            ],
          )),
          Expanded(
            child: Reusable_card(colour: activeCardColor),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Reusable_card(colour: activeCardColor),
              ),
              Expanded(
                child: Reusable_card(colour: activeCardColor),
              ),
            ],
          )),
          Container(
            color: Color(0xffeb1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
