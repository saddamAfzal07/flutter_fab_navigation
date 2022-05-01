//////////////

import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messages",
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            color: kPrimaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Shop name",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Size",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Colour",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Price",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "01/01/2022",
                      style: TextStyle(fontSize: 18.0, fontFamily: "popins"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "The Corner Store",
                    style: TextStyle(
                        fontFamily: "popins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shirts",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      const Text(
                        "   M",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Text(
                        "20€",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Jacket",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      const Text(
                        " S",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Text(
                        "16€",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Total 36€",
                    style: TextStyle(
                        fontFamily: "popins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "01/01/2022",
                      style: TextStyle(fontSize: 18.0, fontFamily: "popins"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "The Corner Store",
                    style: TextStyle(
                        fontFamily: "popins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shirts",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      const Text(
                        "   M",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Text(
                        "20€",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Jacket",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      const Text(
                        " S",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Text(
                        "20€",
                        style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Total 40€",
                    style: TextStyle(
                        fontFamily: "popins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
