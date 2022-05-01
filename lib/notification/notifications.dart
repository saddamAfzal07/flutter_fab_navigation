import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/Model/user_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 5,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: UserNotifications.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          UserNotifications[index].Image.toString(),
                        ),
                      ),
                      title: RichText(
                        // overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            text: "${UserNotifications[index].name} ",
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: UserNotifications[index]
                                    .Notifications
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ]),
                      ),
                      subtitle: Text(UserNotifications[index].date.toString()),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 17,
                        color: Colors.black,
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
