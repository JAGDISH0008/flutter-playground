import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
  ];
  var i = 0;
  click() {
    setState(() {
      i += 1;
    });
    print(i);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[i]),
          // RaisedButton(
          //   child: Text('Press Me'),
          //   onPressed: click,
          // textColor: Colors.indigoAccent,
          // ),
          Answer(click),
          Answer(click),
          Answer(click),
          Answer(click),

        ],
      ),
    ));
  }
}
