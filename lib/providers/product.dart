import 'package:flutter/widgets.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final String imageUrl;
  final String brandName;
  final String followers;
  final String logo;
  final List<Color> color;
  final List<String> sizes;

  Product ({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.brandName,
    required this.followers,
    required this.logo,
    required this.color,
    required this.sizes,
  });
}