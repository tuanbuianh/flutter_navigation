import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'demo navigate',
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),  
      ),
      body: Center(
        child: RaisedButton(
          child: Text('go to second page'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => secondPage()),
            );
          },
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
            child: Material(
              child: RaisedButton(
                child: Text('next third page'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => thirdPage()),
                  );
                },
              ),
            ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(150, 10, 0, 0),
            child: Material(
                child: RaisedButton(
                  child: Text('back page'),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),)
          ],
        ),
      ),
    );
  }
}

class thirdPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
              child: Material(
                child: RaisedButton(
                  child: Text('go to first page'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(150, 10, 0, 0),
              child: Material(
                child: RaisedButton(
                  child: Text('back page'),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),)
          ],
        ),
      ),
    );
  }
}