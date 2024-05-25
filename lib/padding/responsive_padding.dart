import 'package:flutter/material.dart';

class ResponsivePadding extends StatelessWidget {
  final Widget child;
  ResponsivePadding({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 800
          ? EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10)
          : const EdgeInsets.all(0),
      child: child,
    );
  }
}
