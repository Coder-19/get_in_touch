// the code below is for creating a widget to create a model
// class for question and answer
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  // creating a property named question of type string to get
  // question from the user
  final String question;

  // creating another property below of type string to get
  // the answer for users question
  final String answer;

  // initializing the above properties using dart constructor
  QuestionAnswer({
    this.question,
    this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 150.0,
              ),
              child: Text(
                '$question',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          // Text(
          //   answer,
          // ),

          SizedBox(
            height: 10.0,
          ),

          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: Colors.white,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 150.0,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                                  child: Text(
                    '$answer',
                    // textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15.0, color: Colors.blueAccent),
                  ),
                ),
              ),
            ),
          ),

          // Container(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(
          //       vertical: 20.0,
          //       horizontal: 150.0,
          //     ),
          //     child: Text(
          //       '$answer',
          //       // textAlign: TextAlign.left,
          //       style: TextStyle(fontSize: 15.0, color: Colors.blueAccent),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
