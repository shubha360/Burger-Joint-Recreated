import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:flutter/material.dart';

class TermsConditionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      '*Terms and Conditions Applied',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 3),
    );
  }
}
