import 'package:flutter/material.dart';
import 'package:market/providers/product.dart';

class Products with ChangeNotifier{
  final List<Product> _items = [
    Product(
      id: 'm1', 
      title: 'Classic Fit Men’s Cotton T-Shirt', 
      description: 'Elevate your casual wardrobe with this Classic Fit Cotton T-Shirt. Made from soft, breathable cotton, it’s designed for ultimate comfort and a flattering silhouette. Perfect for layering or wearing solo, this wardrobe essential comes in a variety of versatile colors. Whether you\'re dressing up for a relaxed outing or lounging at home, this t-shirt offers all-day ease and style.', 
      price: 257.0, 
      rating: 5.0, 
      imageUrl: 'https://www.urbanofashion.com/cdn/shop/files/aopleaffull-whigre_AI_1.jpg'
    ),
    Product(
      id: 'm2', 
      title: 'Men’s Slim-Fit Stretch Chinos', 
      description: 'Upgrade your everyday style with these Slim-Fit Stretch Chinos. Crafted with a blend of cotton and a touch of spandex, these pants offer a sleek, modern fit that moves with you. Available in neutral tones, they’re perfect for both casual and semi-formal occasions. Pair them with a shirt for a polished look, or dress them down with a tee for relaxed vibes.', 
      price: 500.90, 
      rating: 4.0, 
      imageUrl: 'https://petermanningnyc.com/cdn/shop/files/ATP04505.jpg?'
    ),
    Product(
      id: 'm3', 
      title: 'Men’s Athletic Zip-Up Hoodie', 
      description: 'Stay warm and stylish with this Men’s Athletic Zip-Up Hoodie. Featuring a sleek design and made from a soft, moisture-wicking fabric, it’s the ideal choice for workouts or casual wear. With a full-zip closure, a drawstring hood, and a comfortable fit, this hoodie is a must-have for the modern man on the go.', 
      price: 429.08, 
      rating: 5.0, 
      imageUrl: 'https://midstchull.com/cdn/shop/products/db5fdd229feb163aaba14a6b4a883834.jpg?'
    ),
    Product(
      id: 'm4', 
      title: 'Elegant V-Neck Sleeveless Blouse', 
      description: 'Step into effortless elegance with this V-neck Sleeveless Blouse. Designed with a flowy, lightweight fabric, this blouse drapes beautifully on the body for a chic, flattering look. Perfect for both office wear and casual outings, it pairs seamlessly with skirts or jeans, making it an essential piece for any wardrobe.', 
      price: 325.76, 
      rating: 4.5, 
      imageUrl: 'https://fabcurate.com/cdn/shop/files/BLOUSE0849-Thumb.jpg?'
    ),
    Product(
      id: 'm5', 
      title: 'High-Waisted Tailored Trousers', 
      description: 'Perfect your professional style with these High-Waisted Tailored Trousers. These sleek, structured pants are crafted from a soft, breathable fabric that keeps you comfortable throughout the day. With a flattering high-waisted cut, these trousers create a smooth, elongated silhouette. Ideal for work or an evening out, these versatile trousers will become your new go-to.',
      price: 832.90, 
      rating: 5.0, 
      imageUrl: 'https://cdn-img.prettylittlething.com/d/c/2/c/dc2ce7c9fe622ef1850ff9766fb777bfc06c0326_cnd1489_2.jpg'
    ),
    Product(
      id: 'm6', 
      title: 'Cozy Knit Oversized Sweater', 
      description: 'Stay warm and stylish in this Cozy Knit Oversized Sweater. Crafted from a soft, thick knit fabric, this sweater offers the perfect combination of warmth and comfort. Its oversized fit makes it easy to layer over any outfit, while the chunky knit design adds a trendy touch. Ideal for chilly days, pair it with your favorite jeans for a laid-back look.', 
      price: 865.40, 
      rating: 5.0, 
      imageUrl: 'https://shopdressup.com/cdn/shop/files/shopdressup_blue_striped_oversized_sweater-4.jpg?'
    )
  ];

  List<Product> getProducts() {
    return [..._items];
  }
}