import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_in_touch/constants.dart';
import 'package:get_in_touch/model/question_answer.dart';
import 'package:get_in_touch/widgets/side_navigation_bar.dart';

// the code below is for creating the query screen for the app
class QueryScreen extends StatefulWidget {
  @override
  _QueryScreenState createState() => _QueryScreenState();
}

class _QueryScreenState extends State<QueryScreen> {
  // creating an instance of firestore here
  final firestore = FirebaseFirestore.instance;

  // creating an instance of text editing controller
  final textEditingController = TextEditingController();

  // creating a property here to get the user's email
  String email;

  // creating a property here to get the users name
  String name;

  // creating a property here to get the user's question
  String question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideNavigationBar(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueAccent,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Get In Touch'.toUpperCase(),
          style: TextStyle(
            color: Color(0xff457CCD),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 15.0,
            ),
            child: Center(
              child: Text(
                'Login'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xff457CCD),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ListView(
            //   children: <Widget>[],
            // ),

            // ListTile(
            //   title: Text(
            //     'Question 1',
            //     style: TextStyle(
            //       color: Colors.blueAccent,
            //     ),
            //   ),
            //   trailing: IconButton(
            //     icon: Icon(
            //       Icons.add,
            //       color: Colors.blueAccent,
            //     ),
            //     onPressed: () {
            //       // Container(
            //       //   child: Text(
            //       //     'this is an answer to the users question',
            //       //   ),
            //       // );
            //     },
            //   ),
            // ),

            // ListTile(
            //   title: Text(
            //     'Question 2',
            //     style: TextStyle(
            //       color: Colors.blueAccent,
            //     ),
            //   ),
            //   trailing: IconButton(
            //     icon: Icon(
            //       Icons.add,
            //       color: Colors.blueAccent,
            //     ),
            //     onPressed: null,
            //   ),
            // ),

            StreamBuilder<QuerySnapshot>(
              stream: firestore.collection('query_questions').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                  );
                } else {
                  final questionanswer = snapshot.data.docs.reversed;
                  List<QuestionAnswer> query = [];
                  for (var questionAnswer in questionanswer) {
                    final questionText = questionAnswer.data()['question'];
                    final answerText = questionAnswer.data()['answer'];

                    final _questionAnswerUI = QuestionAnswer(
                      question: questionText,
                      answer: answerText,
                    );

                    query.add(_questionAnswerUI);
                  }
                  return Expanded(
                    child: ListView(
                      reverse: true,
                      padding: EdgeInsets.symmetric(
                        vertical: 30.0,
                        horizontal: 10.0,
                      ),
                      children: query,
                    ),
                  );
                }
              },
            ),

            // Flexible(
            //   child: SizedBox(
            //     height: 5.0,
            //   ),
            // ),

            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Didn\'t find your question?',
                        style: kDescriptionTextStyle,
                      ),
                      Text(
                        'Join Our Community'.toUpperCase(),
                        style: kHeadingStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Name:',
                        style: kHeadingStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 150.0,
                        height: 50.0,
                        child: TextField(
                          // keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            // hintText: 'Email',
                            focusColor: Colors.lightBlueAccent,
                          ),
                          onChanged: (value) {
                            // the below line of code is for debugging purpose
                            print('$value');
                            name = value;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Email:',
                        style: kHeadingStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 140.0,
                        height: 50.0,
                        child: TextField(
                          // keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            // hintText: 'Email',
                            focusColor: Colors.lightBlueAccent,
                          ),
                          onChanged: (value) {
                            // the below line of code is for debugging purpose
                            print('$value');

                            email = value;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Question:',
                        style: kHeadingStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 330.0,
                        height: 50.0,
                        child: TextField(
                          // keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            // hintText: 'Email',
                            focusColor: Colors.lightBlueAccent,
                          ),
                          onChanged: (value) {
                            // the below line of code is for debugging purpose
                            print('$value');

                            question = value;
                          },
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: MaterialButton(
                        // padding: EdgeInsets.only(
                        //   right: 10.0,
                        // ),
                        color: Color(0xff277BFF),
                        child: Text(
                          'Submit'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          textEditingController.clear();
                          firestore.collection('query_questions').add({
                            'question': question,
                            'answer': 'null',
                            // 'name': name,
                            // 'email': email,
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  // ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
