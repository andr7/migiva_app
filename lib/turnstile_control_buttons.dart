import 'package:flutter/material.dart';

class TurnstileControlButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final buttons_control_walking = Container(
      margin: EdgeInsets.only(
          top: 5.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/right_arrow_green.png'),
          SizedBox(width: 40.0),
          Image.asset('images/left_arrow_green.png'),
          SizedBox(width: 40.0),
          Image.asset('images/double_arrow_black.png'),
        ],
      ),
    );

    final text_buttons_walking = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            //top: 10.0,
              left: 20.0,
              right: 20.0
          ),
          child: Text(
            "A Pie",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center,
          ),
        ),
        buttons_control_walking
      ],
    );

    final buttons_controls_bus = Container(
      margin: EdgeInsets.only(
          top: 5.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/right_arrow_yelow.png'),
          SizedBox(width: 40.0),
          Image.asset('images/left_arrow_yelow.png'),
        ],
      ),
    );

    final text_buttons_bus = Column(
      children: <Widget>[
        Container(
          child: Text(
            "En Bus",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
            //textAlign: TextAlign.center,
          ),
        ),
        buttons_controls_bus
      ],
    );

    final texts_button_bloquear = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            "Bloquear",
            //textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
            //textAlign: TextAlign.center,
          ),
        ),
        Container(
          /*decoration: new BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10.0)
          ),*/
          margin: EdgeInsets.only(
              top: 5.0
          ),
          child: Image.asset('images/cancel_red.png'),
        )
      ],
    );

    final text_buttons_bus_bloquear = Row(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(5.0)
          ),
          padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 5.0
          ),
          child: text_buttons_bus,
        ),
        Container(
          padding: EdgeInsets.only(
              left: 11.0,
              right: 12.0,
              bottom: 5.0
          ),
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: texts_button_bloquear,
        )
      ],
    );

    return Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(5.0)
          ),
          margin: EdgeInsets.only(
              //top: 15.0,
              left: 20.0,
              right: 20.0
          ),
          padding: EdgeInsets.only(
            //top: 5.0,
              bottom: 5.0
          ),
          child: text_buttons_walking,
        ),
        Container(
          /*decoration: new BoxDecoration(
              border: Border.all(color: Colors.red)
          ),*/
          margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0
          ),
          child: text_buttons_bus_bloquear,
        )
      ],
    );
  }

}