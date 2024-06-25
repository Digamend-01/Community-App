import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:communityapp/Screens/Login%20Create%20Account/change_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgotemailController = TextEditingController();
  TextEditingController forgotOTPController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: width * 0.3),
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.josefinSans(
                    color: const Color(0xff4A4A4A),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.11,
            ),
            Text(
              "Enter your Mail ID to generate OTP",
              style: GoogleFonts.josefinSans(
                color: const Color(0xff383838),
                fontSize: width * 0.04,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 60,
              width: width * 0.75,
              decoration: gradientDecoration,
              child: Padding(
                padding: const EdgeInsets.all(1.8),
                child: Container(
                    decoration: innerGradientDecoration,
                    child: TextFormField(
                      controller: forgotemailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email ID",
                        hintStyle: GoogleFonts.josefinSans(
                          color: const Color(0xff9D9898),
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w300,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Theme.of(context).cardColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Theme.of(context).cardColor)),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.5),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Generate OTP",
                    style: GoogleFonts.josefinSans(
                      color: const Color(0xff190482),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: 60,
              width: width * 0.75,
              decoration: gradientDecoration,
              child: Padding(
                padding: const EdgeInsets.all(1.8),
                child: Container(
                    decoration: innerGradientDecoration,
                    child: TextFormField(
                      controller: forgotOTPController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter OTP",
                        hintStyle: GoogleFonts.josefinSans(
                          color: const Color(0xff9D9898),
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w300,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Theme.of(context).cardColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Theme.of(context).cardColor)),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ChangePassword();
                },
              ));
              },
              child: Container(
                width: width * 0.75,
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
                    'Confirm',
                    style: GoogleFonts.josefinSans(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
