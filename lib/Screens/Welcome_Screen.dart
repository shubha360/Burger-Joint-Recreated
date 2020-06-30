import 'package:burgerjoint/Screens/Choose_Burger.dart';
import 'package:burgerjoint/Utilities/Constants.dart';
import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Widgets/Card_Button.dart';
import 'package:burgerjoint/Widgets/Loading_Indicator.dart';
import 'package:burgerjoint/Widgets/Phoenix_Icon.dart';
import 'package:burgerjoint/Widgets/Terms_Condition_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool loadingVisibility = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: GoogleFonts.robotoSlab(
                        fontSize: SizeConfig.safeBlockHorizontal * 8,
                        letterSpacing: 3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'to',
                      style: GoogleFonts.robotoSlab(
                          fontSize: SizeConfig.safeBlockHorizontal * 8),
                      textAlign: TextAlign.center,
                    ),
                    TypewriterAnimatedTextKit(
                      text: ['BURGER JOINT'],
                      textStyle: GoogleFonts.holtwoodOneSc(
                        fontSize: SizeConfig.safeBlockHorizontal * 8,
                        color: usedColor,
                      ),
                      speed: Duration(milliseconds: 500),
                      repeatForever: true,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: PhoenixIcon(
                iconSize: SizeConfig.safeBlockHorizontal * 20,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CardButton(
                      buttonText: 'CONTINUE TO ORDER',
                      buttonFunction: () {
                        setState(() {
                          loadingVisibility = true;
                        });
                        Future.delayed(
                          Duration(
                            seconds: 2,
                          ),
                          () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChooseBurger(),
                            ),
                          ),
                        );
                      }),
                  TermsConditionText(),
                  Visibility(
                    maintainState: true,
                    maintainAnimation: true,
                    maintainSize: true,
                    visible: loadingVisibility,
                    child: LoadingIndicator(
                      size: SizeConfig.safeBlockVertical * 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
