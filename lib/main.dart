import 'package:communityapp/Constants/Gradient_Border_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Column(children: [
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(left: 38.0),
            child: GradientBorderScreen(
              child: Text("data"),
            ),
          )
        ]),
      ),
    );
  }
}
