import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final MaterialColor donutColor;
  final String imageName;
  final double borderRadius = 14;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50] ?? Colors.grey[50], // Asegura un color seguro
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100] ?? Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColor[800] ?? Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            // donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0, vertical: 4),
              child: Image.asset(imageName, errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 50, color: Colors.red);
              }),
            ),

            // donut flavor
            Text(
              donutFlavor,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),

            // love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // love icon
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.pink[400] ?? Colors.pink),
                    onPressed: () {
                      debugPrint('Favorito presionado');
                    },
                  ),

                  // plus button
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.grey[800] ?? Colors.grey),
                    onPressed: () {
                      debugPrint('Añadir presionado');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
