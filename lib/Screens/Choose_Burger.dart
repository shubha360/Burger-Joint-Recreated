import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Widgets/Card_Button.dart';
import 'package:burgerjoint/Widgets/Choice_List.dart';
import 'package:flutter/material.dart';
import '../Utilities/List&Maps.dart';
import 'Choose_Drinks.dart';

class ChooseBurger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: ChoiceList(
          header: 'Choose Burger:',
          cardButtonBuild: (burgerList).map((burger) {
            return CardButton(
              buttonText: '${burger['burger']} - \$${burger['price']}',
              buttonFunction: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseDrinks(
                    burgerName: '${burger['burger']}',
                    burgerPrice: '${burger['price']}',
                  ),
                ),
              ),
            );
          }).toList(),
          headerVerticalPadding: 0,
        ),
      ),
    );
  }
}
