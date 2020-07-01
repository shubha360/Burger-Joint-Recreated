import 'package:burgerjoint/Screens/Final_Screen.dart';
import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Widgets/Card_Button.dart';
import 'package:burgerjoint/Widgets/Checkout_Row.dart';
import 'package:burgerjoint/Widgets/Phoenix_Icon.dart';
import 'package:burgerjoint/Widgets/Terms_Condition_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final String drinksName;
  final String drinksPrice;

  CheckoutScreen(
      {@required this.burgerName,
      @required this.burgerPrice,
      @required this.drinksName,
      @required this.drinksPrice});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double determineTotalPrice() {
      double burgerOriginalPrice = double.parse(burgerPrice);
      double drinksOriginalPrice = double.parse(drinksPrice);

      double total = burgerOriginalPrice + drinksOriginalPrice;

      return total;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Checkout',
                  style: GoogleFonts.robotoSlab(
                    fontSize: SizeConfig.safeBlockHorizontal * 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CheckoutRow(
                        startText: burgerName,
                        endText: burgerPrice,
                        weight: FontWeight.normal,
                      ),
                      CheckoutRow(
                        startText: drinksName,
                        endText: drinksPrice,
                        weight: FontWeight.normal,
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: SizeConfig.safeBlockVertical * .1,
                        indent: SizeConfig.safeBlockHorizontal * 10,
                        endIndent: SizeConfig.safeBlockHorizontal * 10,
                      ),
                      CheckoutRow(
                        startText: 'Total',
                        endText: '${determineTotalPrice()}',
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  CardButton(
                    buttonText: 'Confirm Order',
                    buttonFunction: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinalScreen(),
                      ),
                    ),
                  ),
                  TermsConditionText(),
                  PhoenixIcon(
                    iconSize: SizeConfig.safeBlockHorizontal * 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
