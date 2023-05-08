import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("Menu"),
      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: MyBox(
              title: "Box1",
              backgruondColor: Colors.red,
              color: Colors.white,
            )),
            Expanded(
                child: MyBox(
              title: "Box2",
              backgruondColor: Colors.yellow,
            )),
            Expanded(
                child: MyBox(
              title: "Box3",
              backgruondColor: Colors.blue,
            )),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  String title;
  Color backgruondColor;
  Color? color;
  MyBox(
      {super.key,
      required this.title,
      required this.backgruondColor,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: backgruondColor,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ));
  }
}
