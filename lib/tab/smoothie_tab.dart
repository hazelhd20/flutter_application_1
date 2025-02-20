import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final List<List<dynamic>> smoothiesOnSale = [
    ["Strawberry", 40.0, Colors.red, "lib/images/strawberry_smoothie.png"],
    ["Banana", 35.0, Colors.yellow, "lib/images/strawberry_smoothie.png"],
    ["Berry Mix", 50.0, Colors.purple, "lib/images/strawberry_smoothie.png"],
    ["Mango", 45.0, Colors.orange, "lib/images/strawberry_smoothie.png"],
    ["Avocado", 55.0, Colors.green, "lib/images/strawberry_smoothie.png"],
    ["Chocolate", 60.0, Colors.brown, "lib/images/strawberry_smoothie.png"],
    ["Vanilla", 38.0, Colors.blue, "lib/images/strawberry_smoothie.png"],
    ["Green Detox", 65.0, Colors.teal, "lib/images/strawberry_smoothie.png"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1].toString(),
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
    );
  }
}
