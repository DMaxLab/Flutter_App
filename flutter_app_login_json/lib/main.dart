import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: new MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: "Email/User Name."),
                    ),
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0,right: 15.0),
                    child: InkWell(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.green,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    margin:
                           EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      shadowColor:  Colors.lightGreenAccent,
                      color:Colors.lightGreen,
                      elevation: 2.0,
                      child: GestureDetector(
                        onTap: () {
                          //Navigator.removeRoute(context, route)
                           Navigator.push(context,
                           MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Center(
                          child: Text(
                            "Sign in with email.",
                             style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
