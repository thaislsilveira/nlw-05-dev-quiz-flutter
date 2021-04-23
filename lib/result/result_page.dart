import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text("Parabéns!", style: AppTextStyles.heading40),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    text: "Você concluiu",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                          text: "\nGerenciamento de Estado",
                          style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "\ncom 6 de 10 acertos.",
                          style: AppTextStyles.body),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ]
            ),           
          Column(
            children: [
                Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButtonWidget.purple(
                      label: "Compartilhar", onTap: () {}),
                )),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: NextButtonWidget.transparent(
                      label: "Voltar ao início",
                      onTap: () {
                        Navigator.pop(context);
                      }),
                )),
              ],
            )
            ]
          )
          ],
        ),
      ),
    );
  }
}
