import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello World';
  int _valueInt = 0;

  void _add() {
    setState(() {
      _valueInt++;
    });
  }

  void _subtract() {
    setState(() {
      _valueInt--;
    });
  }

  void _onPressed(String param) {
    setState(() {
      _value = param;
    });
  }

  void _onPressedNoParam() {
    setState(() {
      _value = 'Hafizh';
    });
  }

  void _onPressedDate() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                onPressed: _onPressedNoParam,
                child: new Text('Click me'),
              ),
              new RaisedButton(
                onPressed: () => _onPressed('Hafizh Fadhila'),
                child: new Text('Click me (Param)'),
              ),
              new FlatButton(
                onPressed: _onPressedDate,
                child: new Text('Click me (Date)'),
              ),
              new Text('Value is $_valueInt'),
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract)
            ],
          ),
        ),
      ),
    );
  }
}
