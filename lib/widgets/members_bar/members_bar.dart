import 'package:flutter/material.dart';

class MembersBar extends StatelessWidget {
  const MembersBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset('assets/forest.png'),
            ),
          ),
        ]

        /*Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/river.jpg', fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/sea.jpg', fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/forest.jpg', fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/river.jpg', fit: BoxFit.cover),
              ),
            ),*/

        );
  }
}
