import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_fab_navigation/home/home.dart';
import 'package:flutter_fab_navigation/live_Shopping/live_shoping.dart';
import 'package:flutter_fab_navigation/message/message.dart';
import 'package:flutter_fab_navigation/notification/notifications.dart';
import 'package:flutter_fab_navigation/profile/profile.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Notifications(),
    const Message(),
    const Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          "assets/images/live.png",
          // height: 100,
          // width: 150,
        ),
        onPressed: () {
          Get.to(ShopLive());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 1,
                offset: const Offset(1, 0),
              ),
            ],
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const Home();
                        currentTab = 0;
                      });
                    },
                    child: Image.asset(
                      "assets/images/home.png",
                      scale: 1.2,
                      color: currentTab == 0 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Notifications();
                        currentTab = 1;
                      });
                    },
                    child: Image.asset(
                      "assets/images/Alarm.png",
                      scale: 1.2,
                      color: currentTab == 1 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Message();
                        currentTab = 2;
                      });
                    },
                    child: Image.asset(
                      "assets/images/msg.png",
                      scale: 1.2,
                      color: currentTab == 2 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Image.asset(
                      "assets/images/Person.png",
                      scale: 1.2,
                      color: currentTab == 3 ? kPrimaryColor : Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
