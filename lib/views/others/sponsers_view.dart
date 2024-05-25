import 'package:flutter/material.dart';

import '../../widgets/navigation_bar/header_bar.dart';

class SponsersView extends StatelessWidget {
  const SponsersView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
        appBar: AppBar(title: const HeaderBar()),
    backgroundColor: Colors.white,
    body: SizedBox(
    width: width,
    height: height,
    child: Column(
    children: [
      Expanded(
        child: (size.width >= 600)
            ? const Image(image: AssetImage('assets/images/inprogress.jpg'),)
            : const Image(image: AssetImage('assets/images/inprogress_mob.jpg'),),

        ),
      ],
    ),
    ),
      );
  }
}
