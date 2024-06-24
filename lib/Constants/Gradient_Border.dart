// ignore_for_file: file_names

import 'package:flutter/material.dart';

final innerGradientDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(10),
);

final gradientDecoration = BoxDecoration(
  gradient: const LinearGradient(colors: [
    Color(0xFF190482),
    Color(0xff7752FE),
  ]),
  borderRadius: BorderRadius.circular(10),
);
