import 'package:flutter/material.dart';
  
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Firstscreen(),
      '/second': (context) => Secondscreen(),
    },
  ));
}

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
  
class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
          children: <Widget>[
          RaisedButton(
            child: Text('Tap'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      )),
    );
  }
}