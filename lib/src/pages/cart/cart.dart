import 'package:chu_hai_long_flutter_10/src/pages/cart/product.dart';
import 'package:chu_hai_long_flutter_10/src/pages/cart/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  static const title = 'My Cart';
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/cart.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const MyCart({
    super.key,
  });

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Product> products = [
    Product('Nike React Miler', 170.00, 1, 'lib/src/assets/images/shose.png'),
    Product('Nike Air Max 270', 112.00, 1, 'lib/src/assets/images/shose1.png'),
  ];
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {}, // Image tapped
                    splashColor: Colors.white10, // Splash color over image
                    child: const Image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 20,
                      height: 20,
                      image: AssetImage(
                        'lib/src/assets/images/back.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('My Cart',
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text('Add more products to your cart!',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                            decoration: TextDecoration.none)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(fontSize: 20),
                      decoration: CartStyle.searchStyle,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: Container(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCart(product: products[index]);
              },
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 60,
                child: TextField(
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: CartStyle.voucherInputDecoration,
                  onChanged: (value) {},
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust value for desired roundness
                    ),
                    backgroundColor: Color.fromARGB(130, 153, 158, 152)),
                onPressed: () {},
                child: const Text(
                  'Apply',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('In total', style: CartStyle.priceText),
              Text('\$282.00', style: CartStyle.priceText)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: CartStyle.checkoutButton,
                onPressed: () {},
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: const CupertinoNavigationBar(
      //   middle: Text('My Cart'),
      //   previousPageTitle: '',
      // ),
      child: _buildBody(),
    );
  }
}
