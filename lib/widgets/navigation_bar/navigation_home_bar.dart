import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tasiwebapp/constant.dart';

class NavigationHomeBar extends StatelessWidget {
  const NavigationHomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/tasi.jpg',
            width: 50,
          ),
          SizedBox(width: 10),
          Text(
            "Telugu Association of South Island, New Zealand",
            style: GoogleFonts.headlandOne(fontSize: 18),
            selectionColor: kTextColor,
          ),
          Spacer(),
          NavItem(
            title: 'Home',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Members',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Contact Us',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Sponsers',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Admin',
            tapEvent: () {},
          ),
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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style:
              const TextStyle(color: kTextColor, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
