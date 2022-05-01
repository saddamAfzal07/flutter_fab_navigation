class Usershop {
  String? Image;
  int? count;
  int? countstar;
  String? name;

  Usershop(
      {required this.name,
      required this.Image,
      required this.countstar,
      required this.count});
}

List<Usershop> UserShop = [
  Usershop(
      name: "Sweet spot",
      Image: "assets/images/cloth1.png",
      countstar: 20,
      count: 42),
  Usershop(
      name: "Heaven spot",
      Image: "assets/images/cloth2.png",
      countstar: 2,
      count: 22),
  Usershop(
      name: "The heaven",
      Image: "assets/images/cloth3.jpg",
      countstar: 16,
      count: 67),
  Usershop(
      name: "Luxy spot",
      Image: "assets/images/cloth4.jpg",
      countstar: 63,
      count: 33),
  Usershop(
      name: "Sweet lusty",
      Image: "assets/images/user_2.jpg",
      countstar: 54,
      count: 55),
];
