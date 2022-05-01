import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const kPrimaryColor = Color(0xff2EC8B2);

class Constants {
  static String font = "Poppins";
  static String appName = "ShopenLive";
  static String appId = "e2edac32004e4e18844bc56379d5ad82";
  static Color appColor = Color(0XFF2fc8b3);
  // Color.fromARGB(255, 47, 200, 179); //
  static String currency = "€";
  static Color lightBgColor = Color(0XFFF7F8FA);
  static Color ringColor = Color.fromARGB(255, 195, 191, 191);
  static Color greyColor = Color.fromARGB(255, 200, 201, 203);
  static Color googleColor = Color.fromARGB(255, 248, 60, 59);
  static Color facebookColor = Color.fromARGB(255, 59, 89, 153);
  static String loremIpsumText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
}

final fieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
  ),
  hintText: "Enter Email",
  hintStyle: TextStyle(fontFamily: "Popins", fontWeight: FontWeight.w400),
  prefixIcon: Image.asset(
    "assets/images/email.png",
    scale: 0.7,
  ),
);
var fieldTextStyle = TextStyle(
  // color: Constants.greyColor,
  fontSize: 13.0.sp,
  fontWeight: FontWeight.w600,
  // fontFamily: Constants.font,
);
final spinkit = SpinKitCircle(
  duration: const Duration(milliseconds: 1500),
  size: 55,
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(24),
        // color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);
