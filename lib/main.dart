import 'package:flutter/material.dart';
import "screen2.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  bool ad = false;
  bool gst = false;
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/logo.png'),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 10.0),),
                    Image(image: AssetImage("images/a icon.png"),),
                  //  Padding(padding: EdgeInsets.only(left: 35.0),),
                    DropdownButton<String>(
             dropdownColor: Color(0xFF131313),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(20),
                     topRight: Radius.circular(20),
                   ),
                   value: _selectedItem,
                 onChanged: (String? newValue) {
                         setState(() {
                           _selectedItem = newValue;
                     });
                 },
               items: [
              'Admin no Shack\nadmin@noshack.com',
              'daisylights\ndaisy@gmail.com'
                      ].map<DropdownMenuItem<String>>((String value) {
                 return DropdownMenuItem<String>(
                   value: value,
                   child: Center(
                     child: Text(value
                       ,style: TextStyle(color: Colors.white),),
                   ),
                 );
               }).toList(),
                     ),
                  ],
                  ),
             ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          if (_selectedItem != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen2(
                                    admin: true,
                                  )),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.blue,
                          shape: StadiumBorder(),
                          minimumSize: Size(300,10),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        ),
                        child: Text('Continue as Admin'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[900],
                          foregroundColor: Colors.blue,
                          shape: StadiumBorder(),
                          minimumSize: Size(300,10),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        ),
                        child: Text('Sign In as guest'),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
    ),
    ],
    ),
    );
  }
}
