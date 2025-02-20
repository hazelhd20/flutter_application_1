import 'package:flutter/material.dart'; 
import 'package:flutter_application_1/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // Lista de donuts
  final List<List<dynamic>> donutsOnSale = [
    ["Ice Cream", 36.0, Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", 45.0, Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", 84.0, Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", 95.0, Colors.brown, "lib/images/chocolate_donut.png"],
    ["Vanilla", 50.0, Colors.yellow, "lib/images/vanilla_donut.png"],
    ["Matcha", 70.0, Colors.green, "lib/images/matcha_donut.png"],
    ["Caramel", 60.0, Colors.orange, "lib/images/caramel_donut.png"],
    ["Blueberry", 80.0, Colors.indigo, "lib/images/blueberry_donut.png"],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          key: ValueKey(donutsOnSale[index][0]), // Mejor rendimiento
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1].toString(), // Convertir a String si es necesario
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
