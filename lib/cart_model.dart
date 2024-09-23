import 'package:flutter/material.dart';

//extends ChangeNotifier
class CartModel {
  final List _shopItems = [
    ["Apple", "4.00", "lib/images/apple.png", Colors.red],
    ["Banana", "5.00", "lib/images/banana.png", Colors.yellow],
    ["Broccoli", "10.00", "lib/images/broccoli.png", Colors.green],
    ["Kiwi", "20.00", "lib/images/kiwi.png", Colors.blueAccent],
    ["Mango", "8.00", "lib/images/mango.png", Colors.grey],
    ["Orange", "5.00", "lib/images/orange.png", Colors.orange],
    [
      "Pineapple",
      "10.00",
      "lib/images/pineapple.png",
      const Color.fromARGB(255, 246, 160, 189)
    ],
    [
      "Tomato",
      "4.00",
      "lib/images/tomato.png",
      const Color.fromARGB(255, 213, 163, 222)
    ],
  ];

  get shopItems => _shopItems;
}
