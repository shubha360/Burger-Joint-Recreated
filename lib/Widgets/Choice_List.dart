import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utilities/SizeConfig.dart';
import 'Phoenix_Icon.dart';

class ChoiceList extends StatelessWidget {
  final String header;
  final cardButtonBuild;
  final double headerVerticalPadding;

  ChoiceList({
    @required this.header,
    @required this.cardButtonBuild,
    @required this.headerVerticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical * headerVerticalPadding),
          child: Text(
            '$header',
            style: GoogleFonts.robotoSlab(
              fontSize: SizeConfig.safeBlockHorizontal * 8,
              letterSpacing: 2,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ...cardButtonBuild,
        PhoenixIcon(iconSize: SizeConfig.safeBlockHorizontal * 10),
      ],
    );
  }
}
