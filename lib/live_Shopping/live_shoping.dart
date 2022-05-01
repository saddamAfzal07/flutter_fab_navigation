import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/Model/live_Shop.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopLive extends StatelessWidget {
  const ShopLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ShoenLive",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1.6 / 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemCount: UserClothes.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 180.0.h,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  UserClothes[index].Image.toString(),
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0, top: 4),
                              child: Text(
                                UserClothes[index].name.toString(),
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Constants.appColor,
                                    ),
                                    SizedBox(width: 3.0.w),
                                    Text(
                                      UserClothes[index].count.toString(),
                                      style: TextStyle(
                                        fontSize: 13.0.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Constants.appColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: Colors.amber.shade600,
                                      size: 40,
                                    ),
                                    Center(
                                      child: Text(
                                        UserClothes[index].countstar.toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 10.0.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // decoration: BoxDecoration(
                      //   color: Colors.amber,
                      // ),
                    );
                  }),
            ),
          ],
        ),
      ),

      //  GridView.builder(
      //   itemCount: UserClothes.length,
      //   // itemCount: snapshot.data.docs.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisExtent: 35.0.h,
      //   ),
      //   itemBuilder: (context, index) {
      //     // DocumentSnapshot doc = snapshot.data.docs[index];
      //     // Map<String, dynamic> data = doc.data();
      //     // String streamName = data["streamerName"] ?? "unknown";
      //     // String userId = data["streamId"] ?? "null";
      //     // print("userid from post $userId");
      //     // String streamThumbnail = data["thumbnail"] ?? "no image";
      //     // int watching = data["watching"] != null
      //     //     ? List<String>.from(data["watching"]).length
      //     //     : 0;
      //     return InkWell(
      //       onTap: () {
      //         // Get.to(() => WatchLiveScreen(
      //         //       role: ClientRole.Audience,
      //         //       channelName: doc.id,
      //         //     ));
      //       },
      //       child: Container(
      //         height: 25.0.h,
      //         child: Column(
      //           // crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Image.asset(
      //               UserClothes[index].Image.toString(),
      //             ),
      //             // Padding(
      //             //   padding: const EdgeInsets.all(8.0),
      //             //   child: ClipRRect(
      //             //     borderRadius: BorderRadius.circular(4.0.w),
      //             //     child:
      //             //         //  CachedNetworkImage(
      //             //         //   imageUrl: "$streamThumbnail",
      //             //         //   height: 24.0.h,
      //             //         //   width: 24.0.h,
      //             //         //   fit: BoxFit.cover,
      //             //         //   placeholder: (context, url) => Center(
      //             //         //     child: CircularProgressIndicator(),
      //             //         //   ),
      //             //         //   errorWidget: (context, url, error) =>
      //             //         Image.asset(
      //             //       UserClothes[index].Image.toString(),
      //             //       height: 24.0.h,
      //             //       width: 24.0.h,
      //             //       fit: BoxFit.cover,
      //             //     ),
      //             //     // ),
      //             //   ),
      //             // ),

      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 8.0),
      //                   child: Row(
      //                     children: [
      //                       Icon(
      //                         Icons.remove_red_eye_outlined,
      //                         color: Constants.appColor,
      //                       ),
      //                       SizedBox(width: 3.0.w),
      //                       Text(
      //                         UserClothes[index].count.toString(),
      //                         style: TextStyle(
      //                           fontSize: 13.0.sp,
      //                           fontWeight: FontWeight.w600,
      //                           color: Constants.appColor,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(right: 12.0),
      //                   child: Stack(
      //                     alignment: Alignment.center,
      //                     children: [
      //                       Icon(
      //                         Icons.star_rounded,
      //                         color: Colors.amber.shade600,
      //                         size: 32,
      //                       ),
      //                       Center(
      //                         child: Text(
      //                           UserClothes[index].countstar.toString(),
      //                           textAlign: TextAlign.center,
      //                           style: TextStyle(
      //                             fontSize: 15.0.sp,
      //                             color: Colors.white,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // )
    );
  }
}
