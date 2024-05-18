import 'package:flutter/material.dart';

class NavigationHomeBar extends StatelessWidget {
  NavigationHomeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 80,
                width: 150,
                child: Image.asset('assets/tasi.jpg'),
              ), //SizedBox
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _NavBarItem('Home'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('Members'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('Telugu Literature'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('Announcements'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('Sponsers'),
                  SizedBox(
                    width: 60,
                  ),
                  _NavBarItem('Contact Us'),
                ],
              )
            ]));
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
