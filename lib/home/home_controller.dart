import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Thaís",
      photoUrl: "https://avatars.githubusercontent.com/u/34002389?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          questionAnswered: 1,
          level: Level.facil,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando o Flutter"),
              AnswerModel(title: "Muito Top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ]),
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando o Flutter"),
              AnswerModel(title: "Muito Top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ])
          ])
    ];

    state = HomeState.success;
  }
}
