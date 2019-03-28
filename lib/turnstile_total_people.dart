import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'carousel_with_indicator.dart';

class TurnstileTotalPeople extends StatelessWidget{
  static String tag = 'turnstile-total-people';
  int _current = 0;
  //String pathButtonSelected = "images/left_arrow_green.png";
  //TurnstileTotalPeople(this.pathButtonSelected);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final text_status_button_selected = Row(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              //border: Border.all(color: Colors.red),
              //borderRadius: BorderRadius.circular(10.0)
          ),
          margin: EdgeInsets.only(
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
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
              color: Colors.green
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
            width: 30.0,
            height: 30.0,
            margin: EdgeInsets.only(
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
              border: Border.all(color: Colors.green),
            )
        )
      ],
    );

    final image_total_people = Row(
      children: <Widget>[
        Container(
            width: 159.0,
            height: 300.0,
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                //fit: BoxFit.cover,
                  image: AssetImage("images/group_turnstile.png")
              ),
              border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(5.0)
            )
        ),
        Container(
          width: 159.0,
          height: 300.0,
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: ListView(
            children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ListTile(
                    title: Text('M1 - 150',
                        
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                                color: Color(0xff00680A)
                        ),
                        textAlign: TextAlign.center
                    ),
                  ),
                  ListTile(
                    title: Text('M2 - 200',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00680A)
                        ),
                        textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M3 - 500',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00680A)
                        ),
                        textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M4 - 167',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00680A)
                        ),
                        textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M5 - 215',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00680A)
                        ),
                        textAlign: TextAlign.center),
                  ),
                  ListTile(
                    title: Text('M6 - 215',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00680A)
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

    final  image_total_people2 = Row(
      children: <Widget>[
        Container(
            width: 139.0,
            height: 300.0,
            //child: Image.asset("images/left_arrow_green.png"),
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              image: DecorationImage(
                //fit: BoxFit.cover,
                  image: AssetImage("images/group2_turnstile.png")
              ),
              border: Border.all(color: Colors.green),
            )
        ),
        Container(
          width: 139.0,
          height: 300.0,
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.green),
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
        Container(
            margin: EdgeInsets.only(
                top: 5.0,
                bottom: 5.0
            ),
            child: text_status_button_selected
        ),
        //CarouselWithIndicator()

        Container(
          height: 330,
          margin: EdgeInsets.only(
              right: 20.0,
              left: 20.0
          ),
          decoration: new BoxDecoration(
              //border: Border.all(color: Colors.green),
              //borderRadius: BorderRadius.circular(5.0)
          ),
          child: Column(
            children: <Widget>[
              CarouselSlider(
                viewportFraction: 1.0,
                //aspectRatio: 2.0,
                //autoPlay: false,
                enlargeCenterPage: true,
                height: 300.0,
                items: [1].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        //width: 300,
                        //width: MediaQuery.of(context).size.width,
                        //margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        //child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                        child: image_total_people,
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(
                  imgList,
                      (index, int) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4)),
                    );
                  },
                ),
              ),
            ],
          )
        )
      ],
    );
  }
}

final List<int> imgList = [
  1,
  2,
  3
  /*'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'*/
];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

//final List child = map<Widget>(
//  imgList,
//      (index, i) {
//    return Container(
//      margin: EdgeInsets.all(20.0),
//      child: ClipRRect(
//        borderRadius: BorderRadius.all(Radius.circular(5.0)),
//        child: Stack(children: <Widget>[
//          Image.network(i, fit: BoxFit.cover, width: 1000.0),
//          Positioned(
//            bottom: 0.0,
//            left: 0.0,
//            right: 0.0,
//            child: Container(
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
//                  begin: Alignment.bottomCenter,
//                  end: Alignment.topCenter,
//                ),
//              ),
//              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//            ),
//          ),
//        ]),
//      ),
//    );
//  },
//).toList();
