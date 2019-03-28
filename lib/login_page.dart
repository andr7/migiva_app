import 'package:flutter/material.dart';
import 'package:migiva_app/turnstile_home_page.dart';
import 'turnstile_configuration.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  //static String tag = 'turnstile-home-page';
  //static String tag = 'turnstile_configuration';
  static String tag = 'home-page';


  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List _companies = ["Andrea", "Ozblu", "Buenos Muchachos"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedCompany;

  bool isChecked = false;

  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_companies);
    _selectedCompany = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = new List();
    for (String fruit in fruits) {
      items.add(new DropdownMenuItem(value: fruit, child: new Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _selectedCompany = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image.asset('images/logo_migiva.png'),
    );

    final combo_company = Container(
      //width: 50.0,
      padding: EdgeInsets.only(
          left: 50.0,
          right: 50.0
      ),
      child: DropdownButton(
        isExpanded: true,
        style: TextStyle(
            color: Colors.lightBlueAccent
        ),
        value: _selectedCompany,
        items: _dropDownMenuItems,
        onChanged: changedDropDownItem,
      ),
    );

    final user = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'AgricolaAndrea',
      decoration: InputDecoration(
        hintText: 'Usuario',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      //initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
          //Navigator.of(context).pushNamed(TurnstileHomePage.tag);
          //Navigator.of(context).pushNamed(TurnstileConfiguration.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Ingresar', style: TextStyle(color: Colors.white)),
      ),
    );

    final chbPassword = Container(
      child: Row(
          children: <Widget>[
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Text(
              "Mantenerme Conectado",
              style: new TextStyle(color: Colors.green),
            ),
          ]
      ),
    );

    final copyRight = Container(
      //padding: EdgeInsets.only(bottom: 10.0),
      child: Text(
        '@Todos los derechos reservados',
        style: TextStyle(color: Colors.black54),
        textAlign: TextAlign.center,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 70.0),
            combo_company,
            SizedBox(height: 20.0),
            user,
            SizedBox(height: 8.0),
            password,
            chbPassword,
            SizedBox(height: 20.0),
            loginButton,
            //copyRight
          ],
        ),
      ),
    );
  }
}
