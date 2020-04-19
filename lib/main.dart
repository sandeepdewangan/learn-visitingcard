import 'package:flutter/material.dart';

/*
  1. Custom Fonts
  ------------------------------------------
    S1: create folder named fonts
    S2: Edit pubspec.yaml
        assets: ---- (SEE DOCS)
    S3: Usage
        fontFamily: 'Name'

 2. Padding Class
  ------------------------------------------
    Padding class can be added to parent of any widget.
 */

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/sandeep.jpg'),
              ),
              Text(
                  'Sandeep Kumar Dewangan',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Satisfy',
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Android Developer',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Nunito',
                  letterSpacing: 5.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 100.0,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: ListTile(
                  title: Text(
                      '+91 98932 28899',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Nunito',
                      color: Colors.teal,
                    ),
                  ),
                  leading: Icon(
                      Icons.phone,
                    color: Colors.teal,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: ListTile(
                  title: Text(
                    'sandeep@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Nunito',
                      color: Colors.teal,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
