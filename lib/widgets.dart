import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  //creating string variable for the card
  final String? title;
  final String? desc;
  TaskCardWidget({Key? key, this.title, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFFFF),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            //If title is empty
            title ?? '(Unamed task)',
            style: TextStyle(
              color: Color(0xFFFF202020),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          Text(
            //if desc is empty
            desc ?? 'No Description added',
            style: TextStyle(
              fontSize: 16.0,
              height: 1.5,
              color: Color(0xFFFFB1B1B1),
            ),
          ),
        ],
      ),
    );
  }
}
