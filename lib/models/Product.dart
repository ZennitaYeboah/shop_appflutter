
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';

class Products {
  Products ({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
  late String id, image, title, description, size;
    late Color  color;
  var price;

  factory Products.fromJson (Map<String,dynamic>json) {
    return Products (
      id: json[ 'id'],
      image: json['image'],
      title: json['title'],
      description: json['description'],
      size: json['size'],
      color:json['colour'],
      price: json['price'],
    );
  }
}

String url= 'https://fakestoreapi.com/products';
Future<List<Products>> fetchProductsData() async {
  http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode ==200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Products.fromJson(data)).toList();
  } else {
    throw Exception ('Unexpected error occurred!');
  }
}

