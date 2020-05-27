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
    {
      'QuestionText':'Question 1',
      'Answer' : ['Answer 1','Answer 2','Answer 3', 'Answer 4']
    },
    {
      'QuestionText':'Question 2',
      'Answer' : ['Answer 1','Answer 2','Answer 3', 'Answer 4']
    },
    {
      'QuestionText':'Question 3',
      'Answer' : ['Answer 1','Answer 2','Answer 3', 'Answer 4']
    },
    {
      'QuestionText':'Question 4',
      'Answer' : ['Answer 1','Answer 2','Answer 3', 'Answer 4']
    },
    {
      'QuestionText':'Question 5',
      'Answer' : ['Answer 1','Answer 2','Answer 3', 'Answer 4']
    },
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
          Question(questions[i]['QuestionText']),
          ...(questions[i]['Answer'] as List<String>).map(
            (answer){
              return Answer(click,answer);

            }

          )
          

        ],
      ),
    ));
  }
}
