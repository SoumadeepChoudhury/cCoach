import 'package:c_coach/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    height: deviceHeight > 700 ? 158.h : 80.h,
                  ),
                  const Image(
                    image: AssetImage("assets/images/birds.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: const Image(
                      image: AssetImage("assets/images/reading-book.png"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.sp),
                              topRight: Radius.circular(40.sp))),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                  style: GoogleFonts.lato(
                                      color: Colors.black, fontSize: 40.sp),
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
                              height: 20.h,
                            ),
                            const Text(
                              "The complete App to start learning new skill and mastering the artistry.",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.info_outline),
                                Container(
                                  width: 200.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(18.sp),
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
