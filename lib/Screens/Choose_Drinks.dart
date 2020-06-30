import 'package:burgerjoint/Screens/Checkout_Screen.dart';
import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Widgets/Card_Button.dart';
import 'package:burgerjoint/Widgets/Choice_List.dart';
import 'package:flutter/material.dart';

import '../Utilities/List&Maps.dart';

class ChooseDrinks extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;

  ChooseDrinks({@required this.burgerName, @required this.burgerPrice});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 5),
              child: Text(
                'Burger : $burgerName',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
              ),
            ),
            ChoiceList(
              header: 'Choose Drinks:',
              cardButtonBuild: (drinksList).map((drinks) {
                return Padding(
                  padding:
                      EdgeInsets.only(bottom: SizeConfig.safeBlockVertical * 5),
                  child: CardButton(
                    buttonText: '${drinks['drinks']} - \$${drinks['price']}',
                    buttonFunction: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutScreen(
                          burgerName: burgerName,
                          burgerPrice: burgerPrice,
                          drinksName: '${drinks['drinks']}',
                          drinksPrice: '${drinks['price']}',
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
              headerVerticalPadding: SizeConfig.safeBlockVertical * .5,
            ),
          ],
        ),
      ),
    );
  }
}
