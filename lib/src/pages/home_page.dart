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
            Expanded(child: MyBox(title: "Box1",)),
            Expanded(child: MyBox(title: "Box2",)),
            Expanded(child: MyBox(title: "Box3",)),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  String title = "";
   MyBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, child: Text(title));
  }
}
