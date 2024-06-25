// ignore_for_file: unused_field

import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:communityapp/Screens.dart/Create_account.dart';
import 'package:communityapp/Screens.dart/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class JoinNowScreen extends StatefulWidget {
  const JoinNowScreen({super.key});

  @override
  State<JoinNowScreen> createState() => _JoinNowScreenState();
}

class _JoinNowScreenState extends State<JoinNowScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          SizedBox(
              width: width /1,
              child: Image.asset("assets/images/join_now.png")),
          SizedBox(
            height: height * 0.13,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CreateAccountScreen();
                },
              ));
            },
            child: Container(
              width: width * 0.7,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff190482),
                    Color(0xff7752FE),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Join Now',
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "Already have an account",
            style: GoogleFonts.josefinSans(
              color: const Color(0xff4A4A4A),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.13, right: width * 0.13),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                },));
              },
              child: Container(
                height: 60.0,
                width: width * 0.7,
                decoration: gradientDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(1.8),
                  child: Container(
                    decoration: innerGradientDecoration,
                    child: Center(
                      child: GradientText(
                        'Log In',
                        style: GoogleFonts.josefinSans(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w500,
                        ),
                        colors: const [
                           const Color(0xFF190482),
                           const Color(0xff7752FE),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
