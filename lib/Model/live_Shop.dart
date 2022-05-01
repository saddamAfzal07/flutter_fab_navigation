class UserCloth {
  String? Image;
  int? count;
  int? countstar;
  String? name;

  UserCloth(
      {required this.name,
      required this.Image,
      required this.countstar,
      required this.count});
}

List<UserCloth> UserClothes = [
  UserCloth(
      name: "Sweet spot",
      Image: "assets/images/cloth1.png",
      countstar: 20,
      count: 42),
  UserCloth(
      name: "Heaven spot",
      Image: "assets/images/cloth2.png",
      countstar: 2,
      count: 22),
  UserCloth(
      name: "The heaven",
      Image: "assets/images/cloth3.jpg",
      countstar: 16,
      count: 67),
  UserCloth(
      name: "Luxy spot",
      Image: "assets/images/cloth4.jpg",
      countstar: 63,
      count: 33),
  UserCloth(
      name: "Sweet lusty",
      Image: "assets/images/cloth5.png",
      countstar: 54,
      count: 55),
];
