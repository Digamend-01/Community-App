// ignore_for_file: file_names, use_build_context_synchronously

import 'dart:convert';
import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:communityapp/Screens/Login%20Create%20Account/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:http/http.dart' as http;
import '../Home Page/home_page.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final apiUrl =
      "https://community-app-3.onrender.com/v1/api/accounts/createAccount";
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;
  bool termsAccepted = false;

  Future<void> createaccount() async {
    if (!termsAccepted) {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text(
                "You must accept the terms and conditions to create an account."),
          );
        },
      );
      return;
    }

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "firstName": firstNameController.text,
        "lastName": lastNameController.text,
        "emailId": emailController.text,
        "password": passwordController.text
      }),
    );

    if (response.statusCode == 201) {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text("Account created successfully."),
          );
        },
      );
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const HomePageScreen();
        },
      ));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Failed to create account. Error: ${response.body}"),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height / 7,
                ),
                Text(
                  "Create Account",
                  style: GoogleFonts.josefinSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: height / 10,
                ),
                _buildTextField(
                  controller: firstNameController,
                  hintText: "First Name",
                  context: context,
                  width: width,
                ),
                SizedBox(
                  height: height / 45,
                ),
                _buildTextField(
                  controller: lastNameController,
                  hintText: "Last Name",
                  context: context,
                  width: width,
                ),
                SizedBox(
                  height: height / 45,
                ),
                _buildTextField(
                  controller: emailController,
                  hintText: "Email ID",
                  context: context,
                  width: width,
                ),
                SizedBox(
                  height: height / 45,
                ),
                _buildPasswordField(
                  controller: passwordController,
                  passwordVisibility: passwordVisibility,
                  togglePasswordVisibility: () {
                    setState(() {
                      passwordVisibility = !passwordVisibility;
                    });
                  },
                  context: context,
                  width: width,
                ),
                SizedBox(
                  height: height / 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: termsAccepted,
                      activeColor: Color(0xff190482),
                      onChanged: (value) {
                        setState(() {
                          termsAccepted = value ?? false;
                        });
                      },
                    ),
                    Column(
                      children: [
                        Text(
                          "By continuing you agree to the app's",
                          style: GoogleFonts.josefinSans(fontSize: 16),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "terms & services",
                                style: GoogleFonts.josefinSans(
                                  color: const Color(0xFF190482),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _showDialog(
                                      context,
                                      width,
                                      "Terms & Conditions",
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
                                    );
                                  },
                              ),
                              TextSpan(
                                text: " and ",
                                style: GoogleFonts.josefinSans(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              TextSpan(
                                text: "privacy policy",
                                style: GoogleFonts.josefinSans(
                                  color: const Color(0xFF190482),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _showDialog(
                                      context,
                                      width,
                                      "Privacy Policy",
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height / 44,
                ),
                InkWell(
                  onTap: createaccount,
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
                        'Create',
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
                  height: height / 25,
                ),
                Text(
                  "Already have an account?",
                  style: GoogleFonts.josefinSans(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ));
                  },
                  child: Text(
                    "Log In",
                    style: GoogleFonts.josefinSans(
                      color: const Color(0xff190482),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required BuildContext context,
    required double width,
  }) {
    return Container(
      height: 60.0,
      width: width * 0.75,
      decoration: gradientDecoration,
      child: Padding(
        padding: const EdgeInsets.all(1.8),
        child: Container(
          decoration: innerGradientDecoration,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.josefinSans(
                color: const Color(0xff9D9898),
                fontSize: width * 0.04,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Theme.of(context).cardColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Theme.of(context).cardColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required bool passwordVisibility,
    required VoidCallback togglePasswordVisibility,
    required BuildContext context,
    required double width,
  }) {
    return Container(
      height: 60.0,
      width: width * 0.75,
      decoration: gradientDecoration,
      child: Padding(
        padding: const EdgeInsets.all(1.8),
        child: Container(
          decoration: innerGradientDecoration,
          child: TextFormField(
            obscureText: passwordVisibility,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password",
              hintStyle: GoogleFonts.josefinSans(
                color: const Color(0xff9D9898),
                fontSize: width * 0.04,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Theme.of(context).cardColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Theme.of(context).cardColor,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: togglePasswordVisibility,
                icon: Icon(
                  passwordVisibility ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(
      BuildContext context, double width, String title, String content) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GradientText(
                  title,
                  colors: const [
                    Color(0xFF190482),
                    Color(0xff7752FE),
                  ],
                  style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: width / 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Icon(Icons.close_rounded),
                  ),
                ),
              ],
            ),
          ),
          content: Text(content),
        );
      },
    );
  }
}
