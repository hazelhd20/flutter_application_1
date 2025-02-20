import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  final List<List<dynamic>> pancakesOnSale = [
    ["Classic", 50.0, Colors.brown, "lib/images/classic_pancake.png"],
    ["Blueberry", 60.0, Colors.blue, "lib/images/classic_pancake.png"],
    ["Chocolate", 70.0, Colors.brown, "lib/images/classic_pancake.png"],
    ["Strawberry", 65.0, Colors.red, "lib/images/classic_pancake.png"],
    ["Banana", 55.0, Colors.yellow, "lib/images/classic_pancake.png"],
    ["Nutella", 80.0, Colors.grey, "lib/images/classic_pancake.png"],
    ["Caramel", 75.0, Colors.orange, "lib/images/classic_pancake.png"],
    ["Mixed Fruit", 85.0, Colors.purple, "lib/images/classic_pancake.png"],
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          key: ValueKey(pancakesOnSale[index][0]), // Mejor rendimiento
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1].toString(),
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
    );
  }
}