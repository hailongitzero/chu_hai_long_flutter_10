import 'package:flutter/material.dart';

abstract class CartStyle {
  static ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.grey[300],
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.all(16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  static InputDecoration searchStyle = const InputDecoration(
    hintText: 'Search',
    prefixIcon: Icon(Icons.search),
    filled: true,
    fillColor: Color.fromARGB(142, 221, 221, 221),
    border: OutlineInputBorder(
      borderSide: BorderSide.none, // Removes the default border
      borderRadius: BorderRadius.all(
          Radius.circular(10.0)), // Optional: Add border radius
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
  );

  static InputDecoration voucherInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
    hintText: 'Enter code voucher',
    filled: true,
    fillColor: const Color.fromARGB(85, 229, 229, 229),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Color.fromARGB(119, 186, 186, 186), width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Color.fromARGB(119, 186, 186, 186), width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  static TextStyle priceText = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 78, 78, 78),
      decoration: TextDecoration.none);

  static ButtonStyle checkoutButton = TextButton.styleFrom(
      minimumSize: Size(400, 60),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Adjust value for desired roundness
      ),
      backgroundColor: Color.fromARGB(255, 255, 94, 0));

  static ButtonStyle btnEditAccount = TextButton.styleFrom(
      minimumSize: Size(400, 60),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Adjust value for desired roundness
      ),
      backgroundColor: Color.fromARGB(255, 255, 94, 0));
}
