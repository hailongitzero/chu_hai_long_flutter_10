import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.payment});
  final Payment payment;

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
              payment.image,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(payment.name,
            style: const TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 118, 118, 118),
                decoration: TextDecoration.none)),
        const SizedBox(
          height: 5,
        ),
        Text(payment.value,
            style: const TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 94, 0),
                decoration: TextDecoration.none))
      ],
    );
  }

  @override
  Widget build(context) {
    return _buildItem();
  }
}

class Payment {
  String name;
  String value;
  String image;
  Payment(this.name, this.value, this.image);
}
