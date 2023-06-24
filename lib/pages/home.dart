import 'package:c_coach/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight / (deviceHeight > 700 ? 5 : 12),
                  ),
                  const Image(
                    image: AssetImage("assets/images/birds.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Image(
                      image: AssetImage("assets/images/reading-book.png"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(deviceWidth / 9.825),
                              topRight: Radius.circular(deviceWidth / 9.825))),
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth / 19.65),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: deviceWidth / 9.825),
                                  children: const <TextSpan>[
                                    TextSpan(text: "Let's start "),
                                    TextSpan(
                                        text: "Growing ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: textColor)),
                                    TextSpan(text: "your "),
                                    TextSpan(
                                        text: "Skill",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: textColor))
                                  ]),
                            ),
                            SizedBox(
                              height: deviceHeight / 40.35,
                            ),
                            const Text(
                              "The complete App to start learning new skill and growing your skill.",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: deviceHeight / 27,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.more_horiz_sharp),
                                Container(
                                  width: deviceWidth / 1.97,
                                  height: deviceHeight / 16.14,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          deviceWidth / 21.83),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          backgroundColor,
                                          textColor,
                                        ],
                                      )),
                                  child: const Center(
                                    child: Text(
                                      "Get Started",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
