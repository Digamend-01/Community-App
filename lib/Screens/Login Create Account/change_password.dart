import 'package:communityapp/Constants/Gradient_Border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
   bool newpasswordvisibility = true;
   bool confirmpasswordvisibility = true;
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [ 
        Center(
              child: Padding(
                padding: EdgeInsets.only(top: width * 0.3),
                child: Text(
                  "Change Password",
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
            Container(
              height: 60,
              width: width * 0.75,
              decoration: gradientDecoration,
              child: Padding(
                padding: const EdgeInsets.all(1.8),
                child: Container(
                    decoration: innerGradientDecoration,
                    child: TextFormField(
                      controller: newpasswordController,
                      obscureText: newpasswordvisibility,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "New Password",
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
                                 suffixIcon: IconButton(
                              icon: Icon(newpasswordvisibility
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: Color.fromARGB(255, 131, 123, 123),
                              onPressed: () {
                                setState(() {
                                  newpasswordvisibility = !newpasswordvisibility;
                                });
                              }),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.04,
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
                      controller: confirmpasswordController,
                      obscureText: confirmpasswordvisibility,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm New Password",
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
                                suffixIcon: IconButton(
                              icon: Icon(confirmpasswordvisibility
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: Color.fromARGB(255, 131, 123, 123),
                              onPressed: () {
                                setState(() {
                                  confirmpasswordvisibility = !confirmpasswordvisibility;
                                });
                              }),
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
      ],),
    );
  }
}