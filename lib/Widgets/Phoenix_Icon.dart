import 'package:burgerjoint/Utilities/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utilities/SizeConfig.dart';

class PhoenixIcon extends StatelessWidget {
  final double iconSize;

  PhoenixIcon({@required this.iconSize});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Hero(
        tag: 'icon',
        child: FaIcon(
          FontAwesomeIcons.phoenixFramework,
          color: usedColor,
          size: iconSize,
        ),
      ),
    );
  }
}
