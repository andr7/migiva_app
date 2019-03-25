import 'package:flutter/material.dart';

import 'turnstile_control_buttons.dart';
import 'turnstile_total_people.dart';

class TurnstileHomePage extends StatelessWidget{
  static String tag = 'turnstile-home-page';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "App Migiva",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
                "Control de Acceso"
            ),
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: <Widget>[  
              TurnstileTotalPeople(),
              TurnstileControlButtons()
            ],
          )
      ),
    );
  }


}