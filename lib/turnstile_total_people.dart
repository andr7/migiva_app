import 'package:flutter/material.dart';


class TurnstileTotalPeople extends StatelessWidget{
  static String tag = 'turnstile-total-people';

  //String pathButtonSelected = "images/left_arrow_green.png";
  //TurnstileTotalPeople(this.pathButtonSelected);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final text_status_button_selected = Row(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0)
          ),
          margin: EdgeInsets.only(
            top: 10.0,
            left: 40.0,
            right: 20.0
          ),
          padding: EdgeInsets.only(
            right: 5.0,
            left: 5.0
          ),
          child: Text(
            "Ingresando en AUF-710",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 30.0,
          height: 30.0,
          margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0
          ),
          //child: Image.asset("images/left_arrow_green.png"),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/left_arrow_green.png")
            ),
            border: Border.all(color: Colors.red),
          )
        )
      ],
    );

    final image_total_people = Row(
      children: <Widget>[
        Container(
          width: 165.0,
          height: 300.0,
          margin: EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              //right: 20.0
          ),
          //child: Image.asset("images/left_arrow_green.png"),
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            image: DecorationImage(
                //fit: BoxFit.cover,
                image: AssetImage("images/group_turnstile.png")
            ),
            border: Border.all(color: Colors.red),
          )
        ),
        Container(
          width: 155.0,
          height: 280.0,
          margin: EdgeInsets.only(
              top: 10.0,
              //left: 10.0,
              right: 20.0
          ),
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.blue),
          ),
          child: ListView(
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('M1 - 150',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    textAlign: TextAlign.center
                    ),
                  ),
                  ListTile(
                    title: Text('M2 - 200',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M3 - 500',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M4 - 167',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M5 - 215',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M6 - 215',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  )
                ]
            ).toList(),
          ),
        )
        //Container
      ],
    );

    final image_total_people2 = Row(
      children: <Widget>[
        Container(
            width: 165.0,
            height: 280.0,
            margin: EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              //right: 20.0
            ),
            //child: Image.asset("images/left_arrow_green.png"),
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                //fit: BoxFit.cover,
                  image: AssetImage("images/group2_turnstile.png")
              ),
              border: Border.all(color: Colors.red),
            )
        ),
        Container(
          width: 155.0,
          height: 280.0,
          margin: EdgeInsets.only(
              top: 10.0,
              //left: 10.0,
              right: 20.0
          ),
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.blue),
          ),
          child: ListView(
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('M7 - 150',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M8 - 200',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M9 - 500',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center),
                  )
                ]
            ).toList(),
          ),
        )

        //Container
      ],
    );

    return Column(
      children: <Widget>[
        text_status_button_selected,
        Container(
          height: 290,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              image_total_people,
              image_total_people2
            ],
          ),
        )//image_total_people
      ],
    );
  }
}