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

    final text_buttons_bus = Column(
      children: <Widget>[

      ],
    );

    final texts_bus_bloquear = Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: 10.0,
                left: 95.0,
                right: 40.0
            ),
            child: Text(
              "En Bus",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),
              //textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10.0,
                left: 45.0,
                right: 20.0
            ),
            child: Text(
              "Bloquear",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900
              ),
              //textAlign: TextAlign.center,
            ),
          ),
        ],
      );

    final buttons_controls_bus = Container(
      margin: EdgeInsets.only(
          top: 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/right_arrow_yelow.png'),
          SizedBox(width: 30.0),
          Image.asset('images/left_arrow_yelow.png'),
          SizedBox(width: 40.0),
          Container(
            decoration: new BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Image.asset('images/cancel_red.png'),
          )
        ],
      ),
    );

    /*final text_buttons_bus = Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.red)
          ),
          padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0
          ),
          child: texts_bus_bloquear,
        ),
        buttons_controls_bus
      ],
    );*/

    return Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.red)
          ),
          margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0
          ),
          padding: EdgeInsets.only(
            top: 3.0,
            bottom: 5.0
          ),
          child: text_buttons_walking,
        ),
        text_buttons_bus
      ],
    );
  }

}