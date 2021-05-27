import 'package:flutter/material.dart';
import 'package:check_clock/models/question_answers.dart';

class Help extends StatelessWidget {
  List<QuestionAnswers> questionAnswers = [
    QuestionAnswers(
        question: "Is this app available on Android and iOS?",
        answer:
            "Yes, it is available on Android and iOS, you can download this app on Play Store and/or App Store"),
    QuestionAnswers(
        question: "I cannot open the menus in the app because of error 401",
        answer: "Try closing the app and opening it again"),
    QuestionAnswers(
        question: "After logging in, I see error 500 on the home screen!",
        answer: "Please try again later, it is caused by the server error"),
    QuestionAnswers(
        question: "My attendance is failed",
        answer:
            "Please check if your GPS is already on or not, then check your internet connection"),
    QuestionAnswers(
        question: "My problem is not listed above (or i'm stuck)!",
        answer:
            "Please contact us, you can get our contact information on the sidebar menu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      //drawer: DrawerComponent(),
      body: Container(
        child: ListView.builder(
            itemCount: questionAnswers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          questionAnswers[index].question,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Text(questionAnswers[index].answer),
                      leading: Icon(Icons.question_answer)),
                ),
              );
            }),
      ),
    );
  }
}
