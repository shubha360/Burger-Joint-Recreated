import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:flutter/material.dart';

class CheckoutRow extends StatelessWidget {
  final String startText;
  final String endText;
  final weight;

  CheckoutRow({this.startText, this.endText, this.weight});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 10,
        vertical: SizeConfig.safeBlockVertical * 1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$startText',
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 5,
              fontWeight: weight,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            '\$$endText',
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 5,
              fontWeight: weight,
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
