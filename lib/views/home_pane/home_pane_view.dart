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
          decoration: BoxDecoration(color: Colors.yellow),
          child: const Text(
            "text 1",
            style: TextStyle(fontSize: 32),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(24),
          decoration: const BoxDecoration(color: Colors.green),
          child: const Text(
            "text 2",
            style: TextStyle(fontSize: 32),
          ),
        ),
      ],
    ));
  }
}
