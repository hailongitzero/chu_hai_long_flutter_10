import 'package:chu_hai_long_flutter_10/src/pages/profile/payment.dart';
import 'package:chu_hai_long_flutter_10/src/pages/profile/purchase.dart';
import 'package:chu_hai_long_flutter_10/src/pages/profile/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const title = "Profile";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: _buildBody(),
    );
  }

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
                  const Text('My Account',
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 234, 234, 234)),
                        image: const DecorationImage(
                          image: AssetImage(
                              'lib/src/assets/images/avatar.png'), // Replace with your image path
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('Adji Rahadian',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        style: ProfileStyle.btnEditAccount,
                        onPressed: () {},
                        child: const Text(
                          'Edit account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 169, 169, 169)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(114, 209, 208, 208),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Purchases',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.none)),
                          Text('View Purchase History >',
                              style: TextStyle(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 168, 167, 167),
                                  decoration: TextDecoration.none))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1.0, // Change height as desired
                        thickness: 1.0, // Change thickness as desired
                        color: Color.fromARGB(
                            155, 196, 196, 196), // Change color as desired
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PurchaseItem(
                            purchase: Purchase(
                                'To Pay', 'lib/src/assets/images/wallet.png'),
                          ),
                          PurchaseItem(
                            purchase: Purchase(
                                'To Ship', 'lib/src/assets/images/packed.png'),
                          ),
                          PurchaseItem(
                            purchase: Purchase(
                                'To Recive', 'lib/src/assets/images/truck.png'),
                          ),
                          PurchaseItem(
                            purchase: Purchase(
                                'To Rate', 'lib/src/assets/images/star.png'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1.0, // Change height as desired
                        thickness: 1.0, // Change thickness as desired
                        color: Color.fromARGB(
                            155, 196, 196, 196), // Change color as desired
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Digital Purchases',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.none)),
                          Text('View my top-up >',
                              style: TextStyle(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 168, 167, 167),
                                  decoration: TextDecoration.none))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(114, 209, 208, 208),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            fit: BoxFit.cover, // Fixes border issues
                            width: 20,
                            height: 20,
                            image: AssetImage(
                              'lib/src/assets/images/wallet1.png',
                            ),
                          ),
                          Text('My Payments',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.none)),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1.0, // Change height as desired
                        thickness: 1.0, // Change thickness as desired
                        color: Color.fromARGB(
                            155, 196, 196, 196), // Change color as desired
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PaymentItem(
                            payment: Payment('Shopee Pay', 'Rp.4.982.000',
                                'lib/src/assets/images/wallet2.png'),
                          ),
                          PaymentItem(
                            payment: Payment('Shopee Coins', '928.300 Koin',
                                'lib/src/assets/images/wallet3.png'),
                          ),
                          PaymentItem(
                            payment: Payment('SPayLater', 'Rp.10.620.912',
                                'lib/src/assets/images/card.png'),
                          ),
                          PaymentItem(
                            payment: Payment('My Voucher', '92 Voucher',
                                'lib/src/assets/images/voucher.png'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.grey[300],
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.all(16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}
