import 'package:burgerjoint/Utilities/Constants.dart';
import 'package:burgerjoint/Utilities/SizeConfig.dart';
import 'package:burgerjoint/Widgets/Phoenix_Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FinalScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  PhoenixIcon(iconSize: SizeConfig.safeBlockHorizontal * 20),
                  Text(
                    'Your order has been confirmed!',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Please patiently wait for infinite time.',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style:
                        TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Meanwhile share your thoughts through',
                      ),
                      TextSpan(
                        text: ' development.ionosphere@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: usedColor,
        onPressed: () async {
          await Clipboard.setData(ClipboardData(
              text:
                  'https://drive.google.com/drive/folders/1SlHapS4WzrqKrYk0fW6VOBp6DDpRpyhE?usp=sharing'));

          final snackBar = SnackBar(
            content: Text('Downloadable link copied to clipboard.'),
            duration: Duration(seconds: 3),
          );
          _scaffoldKey.currentState.showSnackBar(snackBar);
        },
        label: Text(
          'SHARE',
          style: TextStyle(
            letterSpacing: SizeConfig.safeBlockHorizontal * .8,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
