import 'package:flutter/material.dart';

class PurchaseItem extends StatelessWidget {
  const PurchaseItem({super.key, required this.purchase});
  final Purchase purchase;

  Widget _buildItem() {
    return Column(
      children: [
        InkWell(
          onTap: () {}, // Image tapped
          splashColor: Colors.white10, // Splash color over image
          child: Image(
            fit: BoxFit.cover, // Fixes border issues
            width: 50,
            height: 50,
            image: AssetImage(
              purchase.image,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(purchase.name,
            style: const TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 118, 118, 118),
                decoration: TextDecoration.none))
      ],
    );
  }

  @override
  Widget build(context) {
    return _buildItem();
  }
}

class Purchase {
  String name;
  String image;
  Purchase(this.name, this.image);
}
