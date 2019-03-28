import 'package:flutter/material.dart';

class TurnstileConfNewGroup extends StatefulWidget{

  @override
  _TurnstileConfNewGroupState createState() => new _TurnstileConfNewGroupState();
}

class _TurnstileConfNewGroupState extends State<TurnstileConfNewGroup> {

  String _selectedGroup;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return null;
  }

  final form_group = Container(
    child: Column(
      children: <Widget>[
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          //initialValue: 'AgricolaAndrea',
          decoration: InputDecoration(
            hintText: 'Nombre',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.numberWithOptions(signed: true),
          autofocus: false,
          //initialValue: 'AgricolaAndrea',
          decoration: InputDecoration(
            hintText: 'IP',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          //initialValue: 'AgricolaAndrea',
          decoration: InputDecoration(
            hintText: 'Puerta',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
        ),
//        DropdownButton(
//          isExpanded: true,
//          style: TextStyle(
//              color: Colors.lightBlueAccent
//          ),
//          value: _selectedGroup,
//          items: _dropDownMenuItems,
//          onChanged: changedDropDownItem,
//        )
      ],
    ),
  );

}