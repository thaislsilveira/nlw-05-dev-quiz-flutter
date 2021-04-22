import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        ...question.answers.map(
          (e) => AnswerWidget(
          isRight: e.isRight,
          title: e.title,
          ),
        ),
      ]),
    );
  }
}
