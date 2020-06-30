import 'file:///D:/Shubha/Flutter/Projects/burger_joint/lib/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Utilities/Constants.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;

  CardButton({@required this.buttonText, @required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 7),
      child: GestureDetector(
        onTap: buttonFunction,
        child: Container(
          decoration: BoxDecoration(
            color: usedColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.safeBlockVertical * 2),
            child: Text(
              '$buttonText',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
