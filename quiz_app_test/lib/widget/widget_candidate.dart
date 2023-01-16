import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CandWidget extends StatefulWidget {
  // VoidCallback tap; // candwidget을 사용하는 부모 위젯에서 지정한 ontap을 전달해주는 기능
  // String text;
  // int index;
  // double width;
  // bool answerState;

  VoidCallback tap;
  String text;
  int index;
  double width;
  bool answerState;

  // ignore: use_key_in_widget_constructors
  CandWidget({
    required this.tap,
    required this.index,
    required this.width,
    required this.text,
    required this.answerState,
  });
  _CandWidgetState createState() => _CandWidgetState();
}

class _CandWidgetState extends State<CandWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      height: widget.width * 0.1,
      padding: EdgeInsets.fromLTRB(
        widget.width * 0.048,
        widget.width * 0.024,
        widget.width * 0.048,
        widget.width * 0.024, // width * 0.048일때 클릭미스 및 텍스트 잘림 현상 수정
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepPurple),
        // answerState가 True면 deepPurple, False면 white
        color: widget.answerState ? Colors.deepPurple : Colors.white,
      ),
      child: InkWell(
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.width * 0.035,
              fontWeight: FontWeight.bold,
              color: widget.answerState ? Colors.white : Colors.black),
        ),
        onTap: () {
          setState(() {
            widget.tap();
            widget.answerState = !widget.answerState;
          });
        },
      ),
    );
  }
}
