import 'package:c_coach/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(scaffoldKey: _scaffoldKey),
            Padding(
              padding: EdgeInsets.only(left: 10.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get your",
                    style: GoogleFonts.lato(fontSize: 32.sp),
                  ),
                  Text(
                    "Best Course!",
                    style: GoogleFonts.nunito(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const Icon(Icons.menu)),
        Text(
          "Hey, Alica",
          style:
              GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: Colors.grey.shade300,
          backgroundImage: const AssetImage("assets/images/female-student.png"),
        )
      ],
    );
  }
}
