// ignore_for_file: file_names

import 'package:flutter/material.dart';

class GradientBorderScreen extends StatefulWidget {
  final Widget child;

  const GradientBorderScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<GradientBorderScreen> createState() => _GradientBorderScreenState();
}

class _GradientBorderScreenState extends State<GradientBorderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.0,
      decoration: kGradientBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: kInnerDecoration,
        ),
      ),
    );
  }
}

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(10),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    Color(0xFF190482),
    Color(0xff7752FE),
  ]),
  borderRadius: BorderRadius.circular(10),
);
