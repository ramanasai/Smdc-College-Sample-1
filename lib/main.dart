//import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:smdc_sample_1/chat.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:http/http.dart' as http;
import 'notes.dart';
// import 'chat.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(
        title: 'My Flutter',
      ),
    );
  }
}

class notifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('hello'),
        //   // elevation: 60,
        //   backgroundColor: Colors.red,
        // ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 30, backgroundImage: AssetImage('Image/bell.png')),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Text('Notification',
                  style: TextStyle(
                    fontSize: 40,
                    // fontFamily: 'PermanentMarker',
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        backgroundColor: Colors.red,
        bottomNavigationBar: BottomAppBar(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.chat),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => chat()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.note),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => note()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.table_chart),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => time()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.account_box),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => account()),
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}


class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 30, backgroundImage: AssetImage('Image/chat.png')),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text('Chats',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'PermanentMarker',
                  color: Colors.white,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => notifi()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.note),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => note()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.table_chart),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => time()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => account()),
                  );
                },
              ),
            ]),
      ),
    );
  }
}

class note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      Department
//      Sem
//      Subjects
      body: new Center(
        child: Notees(),
      ),
//      backgroundColor: Colors.lightBlueAccent,
//      bottomNavigationBar: BottomAppBar
//      (
//          child: Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              IconButton(
//               icon: Icon(Icons.notifications),
//               color: Colors.black,
//                onPressed: () {
//                  Navigator.push(context,MaterialPageRoute(builder: (context)=>notifi()),);
//                },
//               ),
//              IconButton(
//              icon: Icon(Icons.chat),
//              color: Colors.black,
//              onPressed: () {
//                Navigator.push(context,MaterialPageRoute(builder: (context)=>chat()),);
//              },
//              ),
//              IconButton(
//              icon: Icon(Icons.note),
//              color: Colors.red,
//              onPressed: () {},
//              ),
//              IconButton(
//               icon: Icon(Icons.table_chart),
//               color: Colors.black,
//                onPressed: () {
//                  Navigator.push(context,MaterialPageRoute(builder: (context)=>time()),);
//                },
//               ),
//              IconButton(
//              icon: Icon(Icons.account_box),
//              color: Colors.black,
//              onPressed: () {
//                Navigator.push(context,MaterialPageRoute(builder: (context)=>account()),);
//              },
//              ),
//          ]
//        ),
//      ),
    );
  }
}

class time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Time Table
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 30, backgroundImage: AssetImage('Image/time.png')),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text('Time Table',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'PermanentMarker',
                  color: Colors.white,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => notifi()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chat()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.note),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => note()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.table_chart),
                color: Colors.blue,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => account()),
                  );
                },
              ),
            ]),
      ),
    );
  }
}

class account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('Image/account_card-512.png')),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text('Account Details',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'PermanentMarker',
                  color: Colors.white,
                ))
          ],
        ),
      ),
      backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 2,
        icon: Icon(Icons.ac_unit),
        label: Text('logout'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (MyHomePage())),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => notifi()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chat()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.note),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => note()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.table_chart),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => time()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                color: Colors.blue,
                onPressed: () {},
              ),
            ]),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Image/shree.jpg'),
//              backgroundColor: Colors.yellow,
              ),
              Text(
                'Student Login',
                style: TextStyle(
                  fontFamily: 'Merienda',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 30,
                width: 300,
                child: Divider(
                  color: Colors.teal.shade900,
                ),
              ),
              Card(
                color: Colors.teal,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                      ),
                      title: Text(
                        'ID Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontFamily: 'Merienda',
                        ),
                      ),
                    )),
              ),
              Card(
                  color: Colors.teal,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.vpn_key,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Merienda',
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 2,
          icon: Icon(Icons.ac_unit),
          label: Text('login'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => notifi()),
            );
          },
        ),
      ),
    );
  }
}