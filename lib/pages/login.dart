import 'package:c_coach/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(children: [
        const Image(
          image: AssetImage("assets/images/login.gif"),
        ),
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(70.sp))),
          child: Padding(
            padding: EdgeInsets.all(30.0.sp),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.sp),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: const Color.fromARGB(166, 131, 120, 215),
                            filled: true,
                            hintText: "Email",
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20.0.sp),
                            ),
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.sp))),
                      ),
                      TextField(
                        cursorColor: Colors.black,
                        obscureText: !isPasswordVisible,
                        decoration: InputDecoration(
                            iconColor: Colors.black,
                            fillColor: const Color.fromARGB(166, 131, 120, 215),
                            filled: true,
                            hintText: "Password",
                            // focusColor: const Color(0xA6705CFE),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20.0.sp),
                            ),
                            prefixIcon: const Icon(Icons.key),
                            prefixIconColor: Colors.grey.shade800,
                            suffixIconColor: Colors.grey.shade800,
                            suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    }),
                                icon: Icon(isPasswordVisible
                                    ? CupertinoIcons.eye_slash_fill
                                    : CupertinoIcons.eye_fill)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.sp))),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.sp),
                              gradient: gradientColor),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Text("Do not have account?"),
                          const Spacer(),
                          InkWell(
                            onTap: () => {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: textColor,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ))
      ]),
    ));
  }
}
