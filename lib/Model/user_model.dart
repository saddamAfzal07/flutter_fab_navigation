class UserModel {
  String? Image;
  String? name;
  String? date;
  String? Notifications;
  String? time;
  UserModel(
      {required this.Image,
      required this.Notifications,
      required this.date,
      required this.name,
      this.time});
}

List<UserModel> UserNotifications = [
  UserModel(
    Image: "assets/images/user_2.jpg",
    Notifications: "Started Following you",
    date: "5 min ago",
    name: "Alexa",
    time: "10:00 Am",
  ),
  UserModel(
    Image: "assets/images/user_3.jpg",
    Notifications: "Loves React",
    date: "5 min ago",
    name: "Romm",
    time: "9:00 Am",
  ),
  UserModel(
    Image: "assets/images/user_4.jpg",
    Notifications: "Accept request",
    date: "50 min ago",
    name: "john",
    time: "1:00 Am",
  ),
  UserModel(
    Image: "assets/images/user_3.jpg",
    Notifications: "Hurry comment on post",
    date: "45 min ago",
    name: "Mia",
    time: "4:00 Am",
  ),
  UserModel(
    Image: "assets/images/user_4.jpg",
    Notifications: "Started Following you",
    date: "25 min ago",
    name: "Sherrr",
    time: "9:00 Am",
  ),
];
