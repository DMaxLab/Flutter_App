import 'package:flutter/material.dart';
import 'Model/user.dart';

class DetailsPage extends StatelessWidget {
  final User user;
  DetailsPage(this.user);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
          title: Text(user.name, style: TextStyle(color: Colors.white)),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white)),
      body: SingleChildScrollView(
              child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 10.0, right: 10.0, bottom: 10.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0, bottom: 0.0),
                        child: Text(user.name, style: TextStyle(fontSize: 25.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(user.email),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20.0, top: 20.0),
                        child: Text(user.about, textAlign: TextAlign.justify,style: TextStyle(fontSize: 14.0)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: user.email,
                child: CircleAvatar(
                  maxRadius: 60.0,
                  backgroundImage: NetworkImage(user.picture),
                  minRadius: 10.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
