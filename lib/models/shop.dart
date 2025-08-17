import 'package:exommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // product for sale
  final List<Product> _shop = [
    Product(
      name: "Hoddies",
      price: 8000,
      description: "premium hoodies made from ultra-soft, breathable fabric. Perfect for casual wear, workouts, or chilly evenings",
      imagePath: 'assets/hoddies.jpg',
    ),

    Product(
      name: "Shoes",
      price: 7999,
      description: "Engineered with cushioned soles, durable grip, and modern design—perfect for running errands, workouts, or casual hangouts.",
      imagePath: 'assets/shoe.jpg',
    ),

    Product(
      name: "Goggles",
      price: 800,
      description: "Designed with anti-fog, UV-protected lenses and a snug, adjustable fit",
      imagePath: 'assets/ggg.webp',
    ),

    Product(
      name: "Watch",
      price: 3459,
      description: "Elevate your look with our sleek and functional watches. Featuring precision movement, elegant design, and water-resistant build",
      imagePath: 'assets/watch.webp',
    ),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
