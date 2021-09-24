import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int size, id;
  final double price;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Eywa Hoodie",
      price: 23.99,
      size: 12,
      description: dummyText,
      image: "assets/images/ash hood.jpg",
      color: Color(0xFFD6D6D6)),
  Product(
      id: 2,
      title: "Myrtle Beach Sweater",
      price: 34.99,
      size: 8,
      description: dummyText,
      image: "assets/images/beach hood.jpg",
      color: Color(0xFF4FC3F7)),
  Product(
      id: 3,
      title: "Kings Shirt",
      price: 25.99,
      size: 10,
      description: dummyText,
      image: "assets/images/black shirt.jpg",
      color: Color(0xFF000000)),
  Product(
      id: 4,
      title: "Russ Shirt",
      price: 19.99,
      size: 11,
      description: dummyText,
      image: "assets/images/russ white.jpg",
      color: Colors.brown),
  Product(
      id: 5,
      title: "Comfort Jacket",
      price: 30.99,
      size: 12,
      description: dummyText,
      image: "assets/images/jacket.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Women Blue Denim",
    price: 234.99,
    size: 12,
    description: dummyText,
    image: "assets/images/denim.jpg",
    color: Color(0xFFFFFFFF),
  ),
];

String dummyText =
    "Free Shipping on millions of clothes .Get the best of Shopping and enjoy low prices with great deals on the largest selection of items.Get fast delivery, Easy returns, Coupons and Up to 70% discount. ";
