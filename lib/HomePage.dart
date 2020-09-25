import 'package:flutter/material.dart';
import 'ColorGenerator.dart';

class HomePage extends StatefulWidget {
  final String title;
  final String text;

  HomePage({Key key, this.title, this.text}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var backgroundColor = Colors.white;

  generateBackgroundColor() {
    setState(() {
      backgroundColor = ColorGenerator.generateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text(widget.title)),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => generateBackgroundColor(),
        child: Center(
          child: Text(widget.text, style: TextStyle(fontSize: 28)),
        ),
      )
    );
  }
}
