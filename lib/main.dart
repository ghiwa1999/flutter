import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'info.dart';
import 'dart:convert';
import 'package:async/async.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // final jsonRepository = new JsonRepo()..add(new InfoSerializer());
  //final body = json.decode('{"name":"Le Gray","rate": 25}');

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          title: Text('Booking App'),
          backgroundColor: Colors.green,
        ),
        body: Column(

          children: <Widget>[
            Expanded(
             child: ListView(
              children: <Widget> [
                titleSection,
                Card(
                  margin: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/LeGray.jpg',fit: BoxFit.cover,
                        width: 400,
                        height: 260,
                      ),
                      innerSection,
                    ],
                  ),
                ),
                bookNow
              ],
            ),
            ),
          ],

        ),
      ),
    );
  }
}
Widget titleSection= Container(
  width:400,
  decoration: BoxDecoration(
  border: Border.all(width: 5, color: Colors.green),
  borderRadius: const BorderRadius.all(const Radius.circular(4)),
    color: Colors.green,
  ),
  margin:const EdgeInsets.fromLTRB(10.0,10.0,10.0,3.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[

      Icon(
        Icons.location_city,
        color: Colors.yellowAccent,
        size:40.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('Beirut',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
                fontSize: 18.0,
              ),
              ),
            ),
            Text('Lebanon',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
            ),
          ],
        ),
      ),
      Text('265 ',
      style: TextStyle(
        color: Colors.white,
      ),
      ),
      Icon(
        Icons.hotel,
        color: Colors.white,
      ),
    ],
  ),
);

Widget innerSection= Container(
  width: 400.0,
    height: 200.0,
padding: const EdgeInsets.fromLTRB(10.0,9.0,20.0,25.0),
  child: Column(
    children: <Widget>[
        Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
            child: Text('Le Gray ',
            style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 27.0,
            color: Colors.green,
             ),
            ),
           ),
           iconList,
         ],
      ),
       Container(
         padding: EdgeInsets.only(top: 9.0),
         child: Text('One of the most luxurious hotels in down town Beirut',
         style: TextStyle(
           color: Colors.green,
           fontSize: 12.0,
           fontWeight: FontWeight.w600,
         ),
         ),
       ),
      buttonSection,
    ],
  ),
);

var iconList= Row(
    mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
  ],
);


//Since the code for building each column is the same, I should've created
//a private helper which takes  the color, an icon and a Text and returns a
// column with its widgets painted in the given color. Well this method and
// the one i used have the same output
Widget buttonSection= Container(
  padding: const EdgeInsets.fromLTRB(10.0,20.0,10.0,0.0),
  child:Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
      Container(
        margin: const EdgeInsets.only(right:20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 8, color: Colors.green),
          borderRadius: const BorderRadius.all(const Radius.circular(4)),
          color: Colors.green,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Icon(
              Icons.share,
              color: Colors.white,
              size: 37.0,
            ),
            Text('Share',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 8, color: Colors.green),
          borderRadius: const BorderRadius.all(const Radius.circular(4)),
          color: Colors.green,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
              size: 37.0,
            ),
            Text('Locate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left:20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 8 , color: Colors.green),
          borderRadius: const BorderRadius.all(const Radius.circular(4)),
          color: Colors.green,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.call,
              color: Colors.white,
              size: 37.0,
            ),
            Text('Call',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
            ),
          ],

        ),
      ),
        ],
      ),
);


Widget bookNow= Container(
  decoration: BoxDecoration(
    border: Border.all(width: 10, color: Colors.green),
    borderRadius: const BorderRadius.all(const Radius.circular(4)),
    color: Colors.green,
  ),
  width:400,
  margin:const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),

child: Center(
  child:Text('Book Now',
    style: TextStyle(
      backgroundColor: Colors.green,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
  ),
),
);

//Future<Info> fetchPost() async {
 // final response =
 // await http.get('http://www.mocky.io/v2/5d74fb9d310000d81595054d');

 // if (response.statusCode == 200) {
   // return Info.fromJson(json.decode(response.body));
 // } else {
  //  throw Exception('Failed to load post');
  //}
//}
