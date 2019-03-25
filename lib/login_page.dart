import 'package:flutter/material.dart';
import 'package:migiva_app/turnstile_home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'turnstile-home-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: Image.asset('images/logo_migiva.png'),
    );

    /*final company = new DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );*/

    //final company = '';

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
          Navigator.of(context).pushNamed(TurnstileHomePage.tag);
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
              "Recordar contraseña",
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
            //company,
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
