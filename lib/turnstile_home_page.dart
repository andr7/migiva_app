import 'package:flutter/material.dart';
import 'turnstile_control_buttons.dart';
import 'turnstile_total_people.dart';
import 'turnstile_configuration.dart';


class TurnstileHomePage extends StatefulWidget {
  static String tag = 'turnstile-home-page';
  @override
  _TurnstileHomePageState createState() => _TurnstileHomePageState();
}

class _TurnstileHomePageState extends State<TurnstileHomePage> {

  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Migiva",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
                "Control de Acceso"
            ),
            actions: <Widget>[
              PopupMenuButton<Choice>(
                onSelected: _select ,
                itemBuilder: (BuildContext context) {
                  return choices.skip(0).map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      //child: Text(choice.title),
                      child: ListTile(
                          leading: choice.icon,
                          title: choice.title),
                    );
                  }).toList();
                },
              ),
            ],
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
//}
}
class Choice {
  const Choice({this.title, this.icon});
  final Text title;
  final Icon icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: const Text('Configuracion')),

];