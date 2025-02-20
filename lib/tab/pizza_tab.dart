import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  final List<List<dynamic>> pizzasOnSale = [
    ["Pepperoni", 120.0, Colors.red, "lib/images/pepperoni_pizza.png"],
    ["Margherita", 100.0, Colors.green, "lib/images/pepperoni_pizza.png"],
    ["BBQ Chicken", 140.0, Colors.brown, "lib/images/pepperoni_pizza.png"],
    ["Veggie", 110.0, Colors.orange, "lib/images/pepperoni_pizza.png"],
    ["Hawaiian", 130.0, Colors.yellow, "lib/images/pepperoni_pizza.png"],
    ["Meat Lovers", 150.0, Colors.redAccent, "lib/images/pepperoni_pizza.png"],
    ["Cheese", 90.0, Colors.blue, "lib/images/pepperoni_pizza.png"],
    ["Supreme", 135.0, Colors.purple, "lib/images/pepperoni_pizza.png"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1].toString(),
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
    );
  }
}
