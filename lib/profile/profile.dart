import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/Model/user_model.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: UserNotifications.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        UserNotifications[index].Image.toString(),
                      ),
                    ),
                    subtitle: IntrinsicHeight(
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: kPrimaryColor,
                            size: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text(
                              "Today",
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black45,
                            height: 14,
                            width: 1.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text(
                              UserNotifications[index].time.toString(),
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      UserNotifications[index].name.toString(),
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "In publishing and graphic  on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 250,
                    width: double.infinity,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          UserNotifications[index].Image.toString(),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("22")
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.message_outlined,
                            size: 17,
                            // color: Colors.red,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text("22")
                        ],
                      ),
                    ],
                  )
                ],
              );
            })),
      ),
    );
  }
}
