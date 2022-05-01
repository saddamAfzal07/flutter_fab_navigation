import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/Dashboard/dashboard.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // AuthService _auth = AuthService();
  // String email;
  // String password;
  // var loginController = Get.put(LoginController());
  // var homeController = Get.find<HomeScreenController>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  initState() {
    super.initState();
  }

  bool passtext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.lightBgColor,
      appBar: AppBar(
        title: Text("login"),
        centerTitle: true,
        // backgroundColor: Colors.white,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          color: Colors.black54,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo_transparent.png",
                  height: 150.0.h,
                  width: 150.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: lableTextStyle,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 5,
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start,
                        validator: (value) {
                          // if (value.isEmpty) {
                          //   return ("Please Enter Your Email");
                          // }
                          // // reg expression for email validation
                          // if (!RegExp(
                          //         "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          //     .hasMatch(value)) {
                          //   return ("Please Enter a valid email");
                          // }
                          // return null;
                        },
                        onSaved: (value) {
                          // if (value != null) {
                          //   email = value;
                          //   controller.email.value = value;
                          // }
                        },
                        style: fieldTextStyle,
                        decoration: fieldDecoration,
                      ),
                    ),
                    SizedBox(height: 3.0.h),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.0, horizontal: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // "password".tr,
                          "password",
                          style: lableTextStyle,
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 5,
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        textAlign: TextAlign.start,
                        obscureText: passtext,
                        validator: (val) => passwordController.text.isEmpty
                            ? "Please Enter Your Password"
                            : null,
                        onSaved: (value) {
                          // if (value != null) {
                          //   password = value;
                          //   controller.password.value = value;
                          // }
                        },
                        style: fieldTextStyle,
                        decoration: fieldDecoration.copyWith(
                          // hintText: "enter_password".tr,
                          hintText: "Enter Password",
                          prefixIcon: Image.asset(
                            "assets/images/Password.png",
                            scale: 0.7,
                          ),

                          suffixIcon: passtext
                              ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      passtext = false;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/images/Eye.png",
                                    scale: 3.8,
                                    color: kPrimaryColor,
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      passtext = true;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/images/Eyenot.png",
                                    scale: 3.8,
                                    color: kPrimaryColor,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          // Get.to(() => ForgotPasswordPage());
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              // "forgot_password".tr,
                              "Forgot Password ?",
                              style: lableTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.0.h),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: ElevatedButton(
                          onPressed: () async {
                            Get.to(Dashboard());
                            // Get.to(() => ProfileChoiceScreen());
                            // if (_formKey.currentState.validate()) {
                            //   controller.loading.value = true;

                            //   try {
                            //     var result = await _auth
                            //         .signInWithEmail(emailController.text,
                            //             passwordController.text)
                            //         .then((value) {});
                            //     Get.off(Wrapper());

                            //     print("try");

                            //     if (result != null) {
                            //       print("result ${result.id}");
                            //     }
                            //   } finally {
                            //     print('login error ');
                            //     controller.loading.value = false;
                            //   }
                            //   controller.loading.value = false;
                            // }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 14,
                            ),
                            child: Text(
                              "login",
                              style: TextStyle(fontSize: 16.0.sp),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Constants.appColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.h),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    // fontFamily: Constants.font,
                    fontFamily: "popins",
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              // Card(
              //   elevation: 5,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(15.0)),
              //   child: Container(
              //     height: 50,
              //     decoration: BoxDecoration(
              //         color: Constants.googleColor,
              //         borderRadius: BorderRadius.circular(15.0)),
              //     child: Row(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Image.asset(
              //               "assets/images/Google.png",
              //               color: Colors.white,
              //             ),
              //             Text(
              //               "Login with Google",
              //               style: TextStyle(
              //                 fontSize: 16.0.sp,
              //                 fontWeight: FontWeight.w700,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: ElevatedButton(
                          onPressed: () async {
                            // controller.loading.value = true;
                            // print('google');

                            // try {
                            //   var result = await _auth.signInWithGoogle();

                            //   if (result != null) {
                            //     CreateDatasetOnFirebase
                            //         .createAndCheckUserData(
                            //             username: result.username,
                            //             email: result.email,
                            //             userId: result.id);
                            //   }
                            // } catch (e) {
                            //   print('Gmail login error $e');
                            //   controller.loading.value = false;
                            // }

                            // controller.loading.value = false;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Image.asset(
                                    "assets/images/Google.png",
                                    color: Colors.white,
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Text(
                                  "Login with Google",
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Constants.googleColor, // Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.h),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.0.h),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: ElevatedButton(
                          onPressed: () async {
                            // controller.loading.value = true;

                            // try {
                            //   var results =
                            //       await _auth.signInWithFacebook();
                            //   if (results != null) {
                            //     CreateDatasetOnFirebase
                            //         .createAndCheckUserData(
                            //             userId: results.id,
                            //             username: results.username,
                            //             email: results.email);
                            //   }
                            // } catch (e) {
                            //   print('facebook login error $e');
                            //   controller.loading.value = false;
                            // }

                            // controller.loading.value = false;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14.h),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Image.asset(
                                    "assets/images/facebook.png",
                                    color: Colors.white,
                                    scale: 1,
                                  ),
                                ),
                                Text(
                                  "Login with Facebook",
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 12, width: 12)
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Constants.facebookColor,
                            // Colors.blue[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.h),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don not have an account ?",
                        style: lableTextStyle.copyWith(
                          color: Colors.black54,
                          fontSize: 16.0.sp,
                        ),
                      ),
                      InkWell(
                        // onTap: () => Get.to(() => SignupScreen()),
                        child: Container(
                          child: Text(
                            "SIGN UP",
                            style: lableTextStyle.copyWith(
                              color: Constants.appColor,
                              fontFamily: "popins",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 4.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           "Language  ",
              //           style: lableTextStyle.copyWith(
              //               color: Colors.black),
              //         ),
              //         Material(
              //           color: Colors.white,
              //           child: InkWell(
              //             onTap: GetStorage().read('locale') == 'en'
              //                 ? null
              //                 : () {
              //                     Get.updateLocale(Locale('en'));
              //                     GetStorage().write('locale', 'en');
              //                   },
              //             child: Container(
              //               child: Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Text(
              //                   "english".tr,
              //                   style: lableTextStyle,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Material(
              //           color: Colors.white,
              //           child: InkWell(
              //             onTap: GetStorage().read('locale') == 'fr'
              //                 ? null
              //                 : () {
              //                     Get.updateLocale(Locale('fr'));
              //                     GetStorage().write('locale', 'fr');
              //                   },
              //             child: Container(
              //               child: Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Text(
              //                   "french".tr,
              //                   style: lableTextStyle,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),

      //  Stack(
      //   children: [
      //     Container(
      //       height: 100.0.h,
      //       width: 100.0.w,
      //       child: Padding(
      //         padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 4.0.h),
      //         child: SingleChildScrollView(
      //           child: Column(
      //             children: [
      //               Center(
      //                 child: Image.asset(
      //                   "assets/images/logo_transparent.png",
      //                   height: 15.0.h,
      //                 ),
      //               ),
      //               Padding(
      //                 padding: EdgeInsets.symmetric(vertical: 8.0),
      //                 child: Align(
      //                   alignment: Alignment.centerLeft,
      //                   child: Text(
      //                     "Email",
      //                     style: lableTextStyle,
      //                   ),
      //                 ),
      //               ),
      //               Form(
      //                 key: _formKey,
      //                 child: Column(
      //                   children: [
      //                     TextFormField(
      //                       controller: emailController,
      //                       keyboardType: TextInputType.emailAddress,
      //                       textAlign: TextAlign.start,
      //                       validator: (value) {
      //                         // reg expression for email validation
      //                       },
      //                       onSaved: (value) {
      //                         if (value != null) {}
      //                       },
      //                       style: fieldTextStyle,
      //                       decoration: fieldDecoration,
      //                     ),
      //                     SizedBox(height: 3.0.h),
      //                     Padding(
      //                       padding: EdgeInsets.symmetric(vertical: 8.0),
      //                       child: Align(
      //                         alignment: Alignment.centerLeft,
      //                         child: Text(
      //                           "password",
      //                           style: lableTextStyle,
      //                         ),
      //                       ),
      //                     ),
      //                     TextFormField(
      //                       controller: passwordController,
      //                       keyboardType: TextInputType.visiblePassword,
      //                       textAlign: TextAlign.start,
      //                       obscureText: true,
      //                       validator: (val) => passwordController.text.isEmpty
      //                           ? "Please Enter Your Password"
      //                           : null,
      //                       onSaved: (value) {},
      //                       style: fieldTextStyle,
      //                       decoration: fieldDecoration.copyWith(
      //                         hintText: "enter_password",
      //                         prefixIcon: Icon(
      //                           Icons.lock_outline,
      //                           color: Constants.appColor,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               Padding(
      //                 padding: EdgeInsets.symmetric(vertical: 10.0),
      //                 child: Column(
      //                   children: [
      //                     Align(
      //                       alignment: Alignment.centerRight,
      //                       child: InkWell(
      //                         onTap: () {
      //                           // Get.to(() => ForgotPasswordPage());
      //                         },
      //                         child: Container(
      //                           child: Padding(
      //                             padding: const EdgeInsets.all(8.0),
      //                             child: Text(
      //                               "forgot_password",
      //                               style: lableTextStyle,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(height: 3.0.h),
      //               Row(
      //                 children: [
      //                   Expanded(
      //                     child: Padding(
      //                       padding: EdgeInsets.symmetric(horizontal: 6.0.w),
      //                       child: ElevatedButton(
      //                         onPressed: () async {
      //                           // Get.to(() => ProfileChoiceScreen());
      //                           // if (_formKey.currentState.validate()) {
      //                           //   controller.loading.value = true;

      //                           //   try {
      //                           //     var result = await _auth
      //                           //         .signInWithEmail(emailController.text,
      //                           //             passwordController.text)
      //                           //         .then((value) {});
      //                           //     Get.off(Wrapper());

      //                           //     print("try");

      //                           //     if (result != null) {
      //                           //       print("result ${result.id}");
      //                           //     }
      //                           //   } finally {
      //                           //     print('login error ');
      //                           //     controller.loading.value = false;
      //                           //   }
      //                           //   controller.loading.value = false;
      //                           // }
      //                         },
      //                         child: Padding(
      //                           padding: EdgeInsets.all(4.0.w),
      //                           child: Text(
      //                             "login",
      //                             style: TextStyle(fontSize: 16.0.sp),
      //                           ),
      //                         ),
      //                         style: ElevatedButton.styleFrom(
      //                           primary: Constants.appColor,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(4.0.h),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(16.0),
      //                 child: Text(
      //                   "Or",
      //                   style: TextStyle(
      //                     fontSize: 16.0.sp,
      //                     // fontFamily: Constants.font,
      //                     fontWeight: FontWeight.w500,
      //                     color: Colors.black54,
      //                   ),
      //                 ),
      //               ),
      //               Row(
      //                 children: [
      //                   Expanded(
      //                     child: Padding(
      //                       padding: EdgeInsets.symmetric(horizontal: 6.0.w),
      //                       child: ElevatedButton(
      //                         onPressed: () async {
      //                           // controller.loading.value = true;
      //                           // print('google');

      //                           // try {
      //                           //   var result = await _auth.signInWithGoogle();

      //                           //   if (result != null) {
      //                           //     CreateDatasetOnFirebase
      //                           //         .createAndCheckUserData(
      //                           //             username: result.username,
      //                           //             email: result.email,
      //                           //             userId: result.id);
      //                           //   }
      //                           // } catch (e) {
      //                           //   print('Gmail login error $e');
      //                           //   controller.loading.value = false;
      //                           // }

      //                           // controller.loading.value = false;
      //                         },
      //                         child: Padding(
      //                           padding: EdgeInsets.symmetric(vertical: 4.0.w),
      //                           child: Row(
      //                             crossAxisAlignment: CrossAxisAlignment.center,
      //                             mainAxisAlignment:
      //                                 MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Image.asset(
      //                                 "assets/icons/icon_google.png",
      //                                 height: 3.0.h,
      //                                 color: Colors.white,
      //                               ),
      //                               Text(
      //                                 "login_with_google",
      //                                 style: TextStyle(
      //                                   fontSize: 14.0.sp,
      //                                   fontWeight: FontWeight.w500,
      //                                 ),
      //                               ),
      //                               SizedBox(height: 12, width: 12)
      //                             ],
      //                           ),
      //                         ),
      //                         style: ElevatedButton.styleFrom(
      //                           primary: Constants.googleColor, // Colors.red,
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(4.0.h),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(height: 2.0.h),
      //               Row(
      //                 children: [
      //                   Expanded(
      //                     child: Padding(
      //                       padding: EdgeInsets.symmetric(horizontal: 6.0.w),
      //                       child: ElevatedButton(
      //                         onPressed: () async {
      //                           // controller.loading.value = true;

      //                           // try {
      //                           //   var results =
      //                           //       await _auth.signInWithFacebook();
      //                           //   if (results != null) {
      //                           //     CreateDatasetOnFirebase
      //                           //         .createAndCheckUserData(
      //                           //             userId: results.id,
      //                           //             username: results.username,
      //                           //             email: results.email);
      //                           //   }
      //                           // } catch (e) {
      //                           //   print('facebook login error $e');
      //                           //   controller.loading.value = false;
      //                           // }

      //                           // controller.loading.value = false;
      //                         },
      //                         child: Padding(
      //                           padding: EdgeInsets.symmetric(vertical: 4.0.w),
      //                           child: Row(
      //                             crossAxisAlignment: CrossAxisAlignment.center,
      //                             mainAxisAlignment:
      //                                 MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Image.asset(
      //                                 "assets/icons/icon_fb.png",
      //                                 height: 3.0.h,
      //                                 color: Colors.white,
      //                               ),
      //                               Text(
      //                                 "login_with_facebook",
      //                                 style: TextStyle(
      //                                   fontSize: 14.0.sp,
      //                                   fontWeight: FontWeight.w500,
      //                                 ),
      //                               ),
      //                               SizedBox(height: 12, width: 12)
      //                             ],
      //                           ),
      //                         ),
      //                         style: ElevatedButton.styleFrom(
      //                           primary: Constants.facebookColor,
      //                           // Colors.blue[900],
      //                           shape: RoundedRectangleBorder(
      //                             borderRadius: BorderRadius.circular(4.0.h),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Container(
      //                 child: Padding(
      //                   padding: const EdgeInsets.symmetric(vertical: 24.0),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Text(
      //                         "no_account",
      //                         style: lableTextStyle.copyWith(
      //                           color: Colors.black54,
      //                           fontSize: 15.0.sp,
      //                         ),
      //                       ),
      //                       InkWell(
      //                         // onTap: () => Get.to(() => SignupScreen()),
      //                         child: Container(
      //                           child: Padding(
      //                             padding: const EdgeInsets.all(8.0),
      //                             child: Text(
      //                               "signup",
      //                               style: lableTextStyle.copyWith(
      //                                 color: Constants.appColor,
      //                                 fontWeight: FontWeight.w500,
      //                                 fontSize: 15,
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               // Container(
      //               //   child: Padding(
      //               //     padding: const EdgeInsets.symmetric(vertical: 4.0),
      //               //     child: Row(
      //               //       mainAxisAlignment: MainAxisAlignment.center,
      //               //       children: [
      //               //         Text(
      //               //           "Language  ",
      //               //           style: lableTextStyle.copyWith(
      //               //               color: Colors.black),
      //               //         ),
      //               //         Material(
      //               //           color: Colors.white,
      //               //           child: InkWell(
      //               //             onTap: GetStorage().read('locale') == 'en'
      //               //                 ? null
      //               //                 : () {
      //               //                     Get.updateLocale(Locale('en'));
      //               //                     GetStorage().write('locale', 'en');
      //               //                   },
      //               //             child: Container(
      //               //               child: Padding(
      //               //                 padding: const EdgeInsets.all(8.0),
      //               //                 child: Text(
      //               //                   "english".tr,
      //               //                   style: lableTextStyle,
      //               //                 ),
      //               //               ),
      //               //             ),
      //               //           ),
      //               //         ),
      //               //         Material(
      //               //           color: Colors.white,
      //               //           child: InkWell(
      //               //             onTap: GetStorage().read('locale') == 'fr'
      //               //                 ? null
      //               //                 : () {
      //               //                     Get.updateLocale(Locale('fr'));
      //               //                     GetStorage().write('locale', 'fr');
      //               //                   },
      //               //             child: Container(
      //               //               child: Padding(
      //               //                 padding: const EdgeInsets.all(8.0),
      //               //                 child: Text(
      //               //                   "french".tr,
      //               //                   style: lableTextStyle,
      //               //                 ),
      //               //               ),
      //               //             ),
      //               //           ),
      //               //         ),
      //               //       ],
      //               //     ),
      //               //   ),
      //               // ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     // controller.loading.value
      //     //     ? Container(
      //     //         height: 100.0.h,
      //     //         width: 100.0.w,
      //     //         color: Colors.black38,
      //     //         child: Center(
      //     //           child: spinkit, // CircularProgressIndicator(),
      //     //         ),
      //     //       )
      //     //     : Container()
      //   ],
      // ),
    );
  }

  var lableTextStyle = TextStyle(
    color: Constants.greyColor,
    fontSize: 13.0.sp,
    fontFamily: "popins",
    fontWeight: FontWeight.w600,
    // fontFamily: Constants.font,
  );
}
