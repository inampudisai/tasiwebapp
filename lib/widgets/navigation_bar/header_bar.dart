import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tasiwebapp/constant.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/tasi.jpg',
            width: 60,
          ),
          const SizedBox(width: 20),
          Center(
              child: (size.width >= 700.0)
                  ? Text(
                      "Telugu Association of South Island, New Zealand",
                      style: GoogleFonts.headlandOne(fontSize: 18),
                      selectionColor: kTextColor,
                      textAlign: TextAlign.center,
                    )
                  : Text(
                      "TASI, New Zealand",
                      style: GoogleFonts.headlandOne(fontSize: 14),
                      selectionColor: kTextColor,
                      textAlign: TextAlign.center,
                    )),
          Spacer(),
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
