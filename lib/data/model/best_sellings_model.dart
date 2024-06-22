import 'dart:convert';
import 'package:flutter/services.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  Future<Map<String, dynamic>> loadJsonFromAssets(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    return jsonDecode(jsonString);
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }

// class UserViewModel {
//   Future<List<User>> fetchUsers() async {
//     final String response = await rootBundle.loadString('assets/data.json');
//     final List<dynamic> data = json.decode(response);
//     return data.map((json) => User.fromJson(json)).toList();
//   }
// }

//   List<productModel> bestSellingsList = [];
//   List<productModel> newArrivalList = [];
//   List<productModel> recommendedForYouList = [];

//   void loadJsonFromAssets() async {
//     String jsonString =
//         await rootBundle.loadString('assets/json_file/dummyData.json');
//     Map<String, dynamic> jsonData = jsonDecode(jsonString);
//     bestSellingsList.add(productModel(
//         id: jsonData['bestSelling']['id'],
//         image: jsonData['bestSelling']['image'],
//         name: jsonData['bestSelling']['name'],
//         price: jsonData['bestSelling']['price']));
//     newArrivalList.add(productModel(
//         id: jsonData['newArrival']['id'],
//         image: jsonData['newArrival']['image'],
//         name: jsonData['newArrival']['name'],
//         price: jsonData['newArrival']['price']));
//     recommendedForYouList.add(productModel(
//         id: jsonData['recommendedForYou']['id'],
//         image: jsonData['recommendedForYou']['image'],
//         name: jsonData['recommendedForYou']['name'],
//         price: jsonData['recommendedForYou']['price']));
//   }
}

class ProductList {
  final List<Product> bestSelling;
  final List<Product> newArrival;
  final List<Product> recommendedForYou;

  ProductList(
      {required this.bestSelling,
      required this.newArrival,
      required this.recommendedForYou});

  factory ProductList.fromJson(Map<String, dynamic> json) {
    return ProductList(
      bestSelling: (json['bestSelling'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
      newArrival:
          (json['newArrival'] as List).map((i) => Product.fromJson(i)).toList(),
      recommendedForYou: (json['recommendedForYou'] as List)
          .map((i) => Product.fromJson(i))
          .toList(),
    );
  }
}
