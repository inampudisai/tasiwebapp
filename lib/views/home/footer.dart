import 'package:flutter/material.dart';
import 'package:tasiwebapp/constant.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          const Expanded(
              flex: 1,
              child: Text(
                'All Right Reserved',
                style: TextStyle(fontSize: 10),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  NavItem(
                    title: 'Twitter',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Facebook',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Linkedin',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Instagram',
                    tapEvent: () {},
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({super.key, required this.title, required this.tapEvent});

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: const TextStyle(color: kPrimaryColor, fontSize: 12),
        ),
      ),
    );
  }
}
