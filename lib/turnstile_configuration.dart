import 'package:flutter/material.dart';
import 'turnstile_home_page.dart';
import 'turnstile_conf_floating_action_button.dart';

class TurnstileConfiguration extends StatefulWidget {
  static String tag = 'turnstile-configuration';

  @override
  _TurnstileConfigurationState createState() => new _TurnstileConfigurationState();
}

class _TurnstileConfigurationState extends State<TurnstileConfiguration> {

  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {

    final text_datos = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                right: 8.0
            ),
            child: Text("Nombre",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0
              ),
              child: Text("IP",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )
          ),
          Container(
              padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0
              ),
              child: Text("Puerta",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )
          ),
          Container(
              padding: EdgeInsets.only(
                  left: 8.0
              ),
              child: Text("Grupo",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )
          )
        ],
      ),
    );

    final listview_group = Container(
      height: 430.0,
      margin: EdgeInsets.only(
          left: 10.0,
          right: 10.0
      ),
      decoration: new BoxDecoration(
        border: Border.all(color: Colors.red),
      ),
      child: ListView(
        //shrinkWrap: true,
        children: <Widget>[
          //copyRight
        ],
      ),
    );

    final txtdatos_lvgroup = Container(
        height: 515.0,
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0
        ),
        child: Column(
          children: <Widget>[
            text_datos,
            listview_group
          ],
        )
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Configuracion Molinete"),
          actions: <Widget>[
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(2).map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment(0.86, 1.0),
          children: <Widget>[
            txtdatos_lvgroup,
            TurnstileConfFloatingActionButton()
          ],
        )
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Nuevo', icon: Icons.directions_car),
  const Choice(title: 'Editar', icon: Icons.directions_car)
];
