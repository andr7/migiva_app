import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'turnstile_home_page.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

//class HomePage extends StatelessWidget {
  //static String tag = 'home-page';
class _HomePageState extends State<HomePage> {

  Choice _selectedChoice = choices[0];
  ChoiceMB _selectedChoiceMB = choicesMenuButton[0];

  void _select(Choice choice) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoice = choice;
    });
  }

  void _selectMB(ChoiceMB choiceMB) {
    setState(() { // Causes the app to rebuild with the new _selectedChoice.
      _selectedChoiceMB = choiceMB;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = "Control de Acceso";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                  "Menu Principal",
              ),
              actions: <Widget>[
                PopupMenuButton<ChoiceMB>(
                  onSelected: _selectMB,
                  itemBuilder: (BuildContext context) {
                    return choicesMenuButton.skip(0).map((ChoiceMB choiceMB) {
                      return PopupMenuItem<ChoiceMB>(
                        value: choiceMB,
                        child: Text(choiceMB.title),
                      );
                    }).toList();
                  },
                ),
              ],
              backgroundColor: Colors.green,
            ),
            body: //MolinoPage(),
            new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: List.generate(choices.length, (index) {
                return Center(
                  //child: ChoiceCard(choice: choices[index], item: choices[index]),
                  child: new GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, "myRoute");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          //builder: (context) => new Estado(estado),
                          builder: (context) => new TurnstileHomePage(),
                        ),
                      );
                    },
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  ),
                );
              }
              ),
            )
        )
    );
  }
}
//}



//Widget westado = new Container(
//  //alignment: Alignment(0.0, 0.0),
//  child: Text(
//    "Estado",
//    style: TextStyle(
//        fontSize: 20.0,
//        fontWeight: FontWeight.bold,
//        //color: Color(0xFF56575a)
//        color: Color(0xFFf2C611),
//        height: 10.0
//    ),
//  ),
//);

//Widget westado2 = new Container(
//  alignment: Alignment(0.0, -0.9),
//  child: Text(
//    "Estado2",
//    style: TextStyle(
//        fontSize: 20.0,
//        fontWeight: FontWeight.bold,
//        //color: Color(0xFF56575a)
//        color: Color(0xFFf2C611)
//    ),
//  ),
//);

class DetailScreen extends StatelessWidget {
  //final Choice card;
  //DetailScreen({Key key, @required this.card}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control de Acceso"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text("Detalle 2"),
      ),
    );
  }
}

const List<ChoiceMB> choicesMenuButton = const <ChoiceMB>[
  const ChoiceMB(title: 'Configuracion', icon: Icons.settings)
];

class ChoiceMB {
  const ChoiceMB({this.title, this.icon});
  final String title;
  final IconData icon;
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Turnstile', icon: Icons.directions_car),
  const Choice(title: 'Turnstile', icon: Icons.directions_boat),
  const Choice(title: 'Turnstile', icon: Icons.directions_bus),
  const Choice(title: 'Turnstile', icon: Icons.directions_railway),
  const Choice(title: 'Turnstile', icon: Icons.directions_walk),
  const Choice(title: 'Turnstile', icon: Icons.directions_bike),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(18.0),
                alignment: Alignment.topLeft,
                child: Icon(choice.icon, size:80.0, color: Colors.purple)),
            new Expanded(
                child: new Container(
                  padding: const EdgeInsets.all(40.0),
                  alignment: Alignment.topLeft,
                  child:
                  Text(choice.title, style: TextStyle(
                    fontSize: 20.0,

                  ), textAlign: TextAlign.center, maxLines: 3,),
                )
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}