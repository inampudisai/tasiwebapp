import 'package:flutter/material.dart';

class HomePaneViewPage extends StatefulWidget {
  const HomePaneViewPage({super.key});

  @override
  State<HomePaneViewPage> createState() => _HomePaneViewPageState();
}

class _HomePaneViewPageState extends State<HomePaneViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(24),
          child: Text(
            "text 1",
            style: TextStyle(fontSize: 32),
          ),
          decoration: BoxDecoration(color: Colors.yellow),
        ),
        Container(
          margin: EdgeInsets.all(24),
          child: Text(
            "text 2",
            style: TextStyle(fontSize: 32),
          ),
          decoration: BoxDecoration(color: Colors.green),
        ),
      ],
    ));
  }
}
