import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() ==> _homeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size; // 너비와 높에이 대해 상수값을 쓰지 않는다. (상대적 수치 활용)
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"), 
          backgroundColor: Colors.deepPurple,
          leading: Container(),
        ),
        body: Column(
          
        ),
      ),
          
    )
  }
}