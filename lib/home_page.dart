import 'package:flutter/material.dart';
import 'package:grocery_shop/grocery_item_tile.dart';
import 'package:grocery_shop/cart_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final CartModel cartModel = CartModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let's order fresh items for you",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Divider
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              thickness: 4,
            ),
          ),
          const SizedBox(height: 10),

          // Fresh items grid
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Fresh Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: cartModel.shopItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.2,
              ),
              itemBuilder: (context, index) {
                final item = cartModel.shopItems[index];
                return GroceryItemTile(
                  itemName: item[0],
                  itemPrice: item[1],
                  imagePath: item[2],
                  color: item[3],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
