import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:communityapp/Screens/Login%20Create%20Account/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: width * 0.3),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.josefinSans(
                      color: Color(0xff4A4A4A),
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.07),
                child: Container(
                  height: 60,
                  width: width * 0.75,
                  decoration: gradientDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(1.8),
                    child: Container(
                        decoration: innerGradientDecoration,
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email ID",
                            hintStyle: GoogleFonts.josefinSans(
                              color: Color(0xff9D9898),
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w300,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Theme.of(context).cardColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).cardColor)),
                          ),
                        )),
                  ),
                ),
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
                        obscureText: _isObscure,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: GoogleFonts.josefinSans(
                            color: Color(0xff9D9898),
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Theme.of(context).cardColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Theme.of(context).cardColor)),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: Color.fromARGB(255, 131, 123, 123),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ForgotPassword();
                },
              ));
                  },
                  child: Text(
                    "Forgot Password ?",
                    style: GoogleFonts.josefinSans(
                      color: Color(0xff383838),
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              SizedBox(
                height: height * 0.09,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'terms & conditions ',
                      style: GoogleFonts.josefinSans(
                        color: Color(0xff190482),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(
                      text: 'and',
                      style: GoogleFonts.josefinSans(
                        color: Color(0xff383838),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: ' privacy policy',
                      style: GoogleFonts.josefinSans(
                        color: Color(0xff190482),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.01,),
              GestureDetector(
                onTap: () {},
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
                      'Log In',
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
                height: height * 0.07,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Don’t have an account",
                    style: GoogleFonts.josefinSans(
                      color: Color(0xff383838),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Join Now",
                    style: GoogleFonts.josefinSans(
                      color: Color(0xff190482),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
