import 'package:burgerjoint/Utilities/Constants.dart';
import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;

  LoadingIndicator({this.size});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SpinKitPulse(
      color: usedColor,
      size: size,
    );
  }
}
