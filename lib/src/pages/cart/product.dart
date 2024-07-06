import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.product});
  final Product product;

  Widget _buildProduct() {
    int quantity = 1;
    var textController = new TextEditingController(text: quantity.toString());
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 234, 234, 234)),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 110,
      child: Row(
        children: [
          Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 234, 234, 234)),
                image: DecorationImage(
                  image:
                      AssetImage(product.image), // Replace with your image path
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(product.name,
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 78, 78, 78),
                      decoration: TextDecoration.none)),
              const SizedBox(height: 10),
              Text("\$${product.price}",
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 78, 78, 78),
                      decoration: TextDecoration.none)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                    onPressed: () {},
                    child: const Text(
                      '+',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: textController,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3)),
                      ),
                    ),
                  ),
                  TextButton(
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                    onPressed: () {},
                    child: const Text(
                      '-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(context) {
    return _buildProduct();
  }
}

class Product {
  String name;
  double price;
  int quantity;
  String image;
  Product(this.name, this.price, this.quantity, this.image);
}
