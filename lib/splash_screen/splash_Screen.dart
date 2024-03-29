import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_fab_navigation/login_Screen/login_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {
      Get.off(() => LoginScreen()); // OnBoardingScreen
      /*    Get.off(() => ProductSelectionPage(
            name: "Brand",
            image:
                "data:image/png;base64,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",
            sizes: [
              Sizze(
                sizzeValue: "S",
                colours: [
                  Colour(
                    colourId: "1",
                    colourValue: "33/150/243",
                    quantity: 4,
                  ),
                  Colour(
                    colourId: "3",
                    colourValue: "103/58/183",
                    quantity: 8,
                  ),
                ],
              ),
              Sizze(
                sizzeValue: "M",
                colours: [
                  Colour(
                    colourId: "2",
                    colourValue: "158/158/158",
                    quantity: 5,
                  ),
                ],
              ),
              Sizze(
                sizzeValue: "L",
                colours: [
                  Colour(
                    colourId: "2",
                    colourValue: "158/158/158",
                    quantity: 5,
                  ),
                  Colour(
                    colourId: "3",
                    colourValue: "103/58/183",
                    quantity: 8,
                  ),
                ],
              ),
            ],
          ));
          */
    });
  }

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: Constants.appColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 200.w,
                  height: 200.0.h,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "ShopenLive",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Popins",
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40.sp,
            child: spinkit,
          ),
        ],
      ),
    );
  }
}
