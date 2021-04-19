import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Container(
             height: 80,
             width: 80,
             child: CircularProgressIndicator(
               strokeWidth: 10,
               //1:11:06
             ),
          )
        ],
      ),
    );
  }
}
