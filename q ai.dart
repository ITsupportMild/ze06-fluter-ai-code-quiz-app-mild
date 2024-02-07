import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: QuizApp(),
    ),
  ));
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              main1(context);
            },
            child: Text('เริ่มคำถามข้อที่ 1-6'),
          ),
          ElevatedButton(
            onPressed: () {
              main2(context);
            },
            child: Text('เริ่มคำถามข้อที่ 7-10'),
          ),
        ],
      ),
    );
  }
}

void main1(BuildContext context) {
  TextEditingController answerController1 = TextEditingController();
  TextEditingController answerController2 = TextEditingController();
  TextEditingController answerController3 = TextEditingController();
  TextEditingController answerController4 = TextEditingController();
  TextEditingController answerController5 = TextEditingController();
  TextEditingController answerController6 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('เริ่มคำถามข้อที่ 1-6'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildQuestion(
                  '1. อุปกรณ์ใดต่อไปนี้ไม่ใช่ส่วนประกอบหลักของคอมพิวเตอร์?'),
              buildAnswerField(answerController1),
              buildQuestion('2. หน่วยความจำหลักของคอมพิวเตอร์เรียกว่าอะไร?'),
              buildAnswerField(answerController2),
              buildQuestion('3. อุปกรณ์ใดใช้สำหรับเก็บข้อมูลถาวร?'),
              buildAnswerField(answerController3),
              buildQuestion('4. อุปกรณ์ใดใช้สำหรับประมวลผลข้อมูล?'),
              buildAnswerField(answerController4),
              buildQuestion('5. อุปกรณ์ใดใช้สำหรับแสดงผลลัพธ์?'),
              buildAnswerField(answerController5),
              buildQuestion('6. อุปกรณ์ใดใช้สำหรับป้อนข้อมูล?'),
              buildAnswerField(answerController6),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

void main2(BuildContext context) {
  TextEditingController answerController7 = TextEditingController();
  TextEditingController answerController8 = TextEditingController();
  TextEditingController answerController9 = TextEditingController();
  TextEditingController answerController10 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('เริ่มคำถามข้อที่ 7-10'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildQuestion(
                  '7. อุปกรณ์ใดใช้สำหรับเชื่อมต่อคอมพิวเตอร์เข้ากับเครือข่าย?'),
              buildAnswerField(answerController7),
              buildQuestion('8. อุปกรณ์ใดใช้สำหรับเก็บข้อมูลสำรอง?'),
              buildAnswerField(answerController8),
              buildQuestion('9. อุปกรณ์ใดใช้สำหรับอ่านข้อมูลจากแผ่นซีดี?'),
              buildAnswerField(answerController9),
              buildQuestion('10. อุปกรณ์ใดใช้สำหรับเขียนข้อมูลลงบนแผ่นซีดี?'),
              buildAnswerField(answerController10),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

Widget buildQuestion(String questionText) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      questionText,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildAnswerField(TextEditingController controller) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'กรอกคำตอบ',
      ),
    ),
  );
}
