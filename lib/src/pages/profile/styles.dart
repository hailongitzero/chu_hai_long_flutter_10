import 'package:flutter/material.dart';

abstract class ProfileStyle {
  static ButtonStyle btnEditAccount = TextButton.styleFrom(
      // minimumSize: Size(400, 60),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      side:
          const BorderSide(color: Color.fromARGB(255, 174, 174, 174), width: 1),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5.0), // Adjust value for desired roundness
      ),
      backgroundColor: Color.fromARGB(114, 209, 208, 208));
}
