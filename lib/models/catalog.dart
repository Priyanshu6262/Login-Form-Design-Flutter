import 'package:flutter/animation.dart';

class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 14 pro max",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image
   
  };
}
