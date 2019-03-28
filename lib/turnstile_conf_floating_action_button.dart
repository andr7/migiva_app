import 'package:flutter/material.dart';

class TurnstileConfFloatingActionButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TurnstileConfFloatingActionButton();
  }

}

class _TurnstileConfFloatingActionButton extends State<TurnstileConfFloatingActionButton>{

  void onPressedAddGroup(){
    Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text("Agregar Grupo",
          textAlign: TextAlign.center,)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      tooltip: "Agregar Grupo",
      onPressed: onPressedAddGroup,
      child: Icon(
        Icons.add
      ),
    );
  }

}