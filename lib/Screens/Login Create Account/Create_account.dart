import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:communityapp/Screens/Login%20Create%20Account/Join_now.dart';
import 'package:communityapp/Screens/Login%20Create%20Account/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height / 7,
              ),
              Text("Create Account",
                  style: GoogleFonts.josefinSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: 60.0,
                width: width * 0.75,
                decoration: gradientDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(1.8),
                  child: Container(
                      decoration: innerGradientDecoration,
                      child: TextFormField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name",
                          hintStyle: GoogleFonts.josefinSans(
                            color: const Color(0xff9D9898),
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w400,
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
              SizedBox(
                height: height / 45,
              ),
              Container(
                height: 60.0,
                width: width * 0.75,
                decoration: gradientDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(1.8),
                  child: Container(
                      decoration: innerGradientDecoration,
                      child: TextFormField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name",
                          hintStyle: GoogleFonts.josefinSans(
                            color: const Color(0xff9D9898),
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w400,
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
              SizedBox(
                height: height / 45,
              ),
              Container(
                height: 60.0,
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
                            color: const Color(0xff9D9898),
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w400,
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
              SizedBox(
                height: height / 45,
              ),
              Container(
                height: 60.0,
                width: width * 0.75,
                decoration: gradientDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(1.8),
                  child: Container(
                      decoration: innerGradientDecoration,
                      child: TextFormField(
                        obscureText: passwordVisibility,
                        controller: passwordController,
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
                                    color: Theme.of(context).cardColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).cardColor)),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordVisibility = !passwordVisibility;
                                  });
                                },
                                icon: Icon(passwordVisibility
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                      )),
                ),
              ),
              SizedBox(
                height: height / 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Column(
                    children: [
                      Text(
                        "By continuing you agree tp app",
                        style: GoogleFonts.josefinSans(fontSize: 16),
                      ),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "terms & services",
                            style: GoogleFonts.josefinSans(
                                color: const Color(0xFF190482),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GradientText(
                                              "Terms & Conditions",
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
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black)),
                                                    child: const Icon(
                                                        Icons.close_rounded)))
                                          ],
                                        ),
                                      ),
                                      content: const Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. "),
                                    );
                                  },
                                );
                              }),
                        TextSpan(
                          text: " and ",
                          style: GoogleFonts.josefinSans(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                        TextSpan(
                            text: "privacy policy",
                            style: GoogleFonts.josefinSans(
                                color: const Color(0xFF190482),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GradientText(
                                              "Privacy Policy",
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
                                              width: width / 16,
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black)),
                                                    child: const Icon(
                                                        Icons.close_rounded)))
                                          ],
                                        ),
                                      ),
                                      content: const Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in."),
                                    );
                                  },
                                );
                              }),
                      ])),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height / 44,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return const CreateAccountScreen();
                  //   },
                  // ));
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
                "Already have an account",
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
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
