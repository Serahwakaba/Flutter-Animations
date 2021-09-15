import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Sandbox extends StatefulWidget {

  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 900),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('animate margin'),
              onPressed: () => setState(() => _margin = 50 ),
            ),
            RaisedButton(
              child: Text('animate color'),
              onPressed: () => setState(() => _color = Colors.purple),
            ),
            RaisedButton(
              child: Text('animate opacity'),
              onPressed: () => setState(() => _opacity = 0),
            ),
            AnimatedOpacity(
                opacity: _opacity,
                child: Text('hide me',
                style: TextStyle(color: Colors.white),),

                duration: Duration(seconds: 2))
          ]
          ,
        ),
      ),

    );
  }
}
