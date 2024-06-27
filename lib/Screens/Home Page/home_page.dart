import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Appbar(height, width, context),
              SizedBox(
                height: height * 0.04,
              ),
              Column(
                children: [
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset("assets/images/profile.png"),
                    ),
                    title: Text(
                      "Hamad Tanveer",
                      style: GoogleFonts.josefinSans(
                        color: const Color(0xff4A4A4A),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Content Creator",
                          style: GoogleFonts.josefinSans(
                            color: const Color(0xff4A4A4A),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Posted 1h ago",
                          style: GoogleFonts.josefinSans(
                            color: const Color(0xff4A4A4A),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    trailing: InkWell(
                        onTap: () {},
                        child: Text(
                          "Follow",
                          style: GoogleFonts.josefinSans(
                            color: const Color(0xff1D0788),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  ShowMoreTextWidget(
                    text:
                        'Lorem ipsum dolor sit amet consectetur. Sit sit et maecenas tellus risus. Neque molestie potenti amet enim donec eleifend. Diam urna tincidunt pellentesque purus. Accumsan velit molestie mi non malesuada. ',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding Appbar(double height, double width, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.07),
      child: Row(
        children: [
          Container(
            height: 50,
            width: width * 0.70,
            child: TextField(
              controller: searchcontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: GoogleFonts.josefinSans(
                    color: const Color(0xff9D9898),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 242, 239, 255),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: Theme.of(context).cardColor)),
                  prefixIcon: const Icon(
                    IconlyLight.search,
                    size: 20,
                    // color: lightIconsColor,
                  )),
            ),
          ),
          SizedBox(
            width: width * 0.04,
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              IconlyLight.chat,
              size: 28,
              color: Color(0xff4A4A4A),
            ),
          ),
          SizedBox(
            width: width * 0.04,
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              IconlyLight.notification,
              size: 28,
              color: Color(0xff4A4A4A),
            ),
          )
        ],
      ),
    );
  }
}

class ShowMoreTextWidget extends StatefulWidget {
  final String text;
  final int maxLength;

  ShowMoreTextWidget({required this.text, this.maxLength = 100});

  @override
  _ShowMoreTextWidgetState createState() => _ShowMoreTextWidgetState();
}

class _ShowMoreTextWidgetState extends State<ShowMoreTextWidget> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = widget.text;
    final maxLength = widget.maxLength;

    return RichText(
      text: TextSpan(
        text: _isExpanded
            ? text
            : text.length > maxLength
                ? text.substring(0, maxLength)
                : text,
        style: GoogleFonts.josefinSans(
          color: const Color(0xff4A4A4A),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        children: [
          if (!_isExpanded && text.length > maxLength)
            const TextSpan(
              text: '... ',
              style: TextStyle(color: Colors.black),
            ),
          TextSpan(
            text: _isExpanded ? ' Show Less' : ' Show More',
            style: GoogleFonts.josefinSans(
              color: const Color(0xff4A4A4A),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            recognizer: TapGestureRecognizer()..onTap = _toggleExpanded,
          ),
        ],
      ),
    );
  }
}
