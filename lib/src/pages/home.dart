import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  static const title = 'Home';
  static const homeIcon = Icon(CupertinoIcons.home);
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final songTabKey = GlobalKey();
  String dropdownValue = 'Jarkata'; // Initial dropdown value

  Widget _buildBody() {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('location',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: dropdownValue,
                          items:
                              <String>['Jarkata', 'Bankok'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                // Right side - Notification Icon
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Image(
                    image: AssetImage('lib/src/assets/images/noti.png'),
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 400,
                                child: TextField(
                                  decoration: const InputDecoration(
                                    hintText: 'Search address, or near you ',
                                    prefixIcon: Icon(Icons.search),
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 221, 221, 221),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide
                                          .none, // Removes the default border
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              10.0)), // Optional: Add border radius
                                    ),
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFA0DAFB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    animationDuration:
                                        const Duration(milliseconds: 200),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 16),
                                  ),
                                  child: const Image(
                                    image: AssetImage(
                                        'lib/src/assets/images/bar.png'),
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA0DAFB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          animationDuration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        child: const Text('House',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                decoration: TextDecoration.none)),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          animationDuration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        child: const Text('Appartment',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 78, 78, 78),
                                decoration: TextDecoration.none)),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          animationDuration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        child: const Text('Hotel',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 78, 78, 78),
                                decoration: TextDecoration.none)),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          animationDuration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        child: const Text('Villa',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 78, 78, 78),
                                decoration: TextDecoration.none)),
                      ),
                      const SizedBox(width: 15),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          animationDuration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                        ),
                        child: const Text('Motel',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 78, 78, 78),
                                decoration: TextDecoration.none)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Near from you',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 78, 78, 78),
                            decoration: TextDecoration.none)),
                    Text('See more',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 78, 78, 78),
                            decoration: TextDecoration.none))
                  ],
                )),
            Expanded(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 350,
                            height: 350,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'lib/src/assets/images/house-1.png'), // Replace with your image path
                                fit: BoxFit.fill,
                              ),
                            ),
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              0, 16, 16, 16),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Row(
                                          children: [
                                            Image(
                                              width: 25,
                                              height: 25,
                                              image: AssetImage(
                                                  'lib/src/assets/images/location.png'), // Replace with your image path
                                              fit: BoxFit.cover,
                                            ),
                                            Text('1.8 km',
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    decoration:
                                                        TextDecoration.none)),
                                          ],
                                        )),
                                    const SizedBox(width: 15),
                                  ],
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 180),
                                    Text('Dreamsville House',
                                        style: TextStyle(
                                            fontSize: 26.0,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            decoration: TextDecoration.none)),
                                    Text('JL. Sultan Iskandar Muda',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            decoration: TextDecoration.none)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 350,
                            height: 350,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'lib/src/assets/images/house-1.png'), // Replace with your image path
                                fit: BoxFit.fill,
                              ),
                            ),
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              0, 16, 16, 16),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Row(
                                          children: [
                                            Image(
                                              width: 25,
                                              height: 25,
                                              image: AssetImage(
                                                  'lib/src/assets/images/location.png'), // Replace with your image path
                                              fit: BoxFit.cover,
                                            ),
                                            Text('1.8 km',
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    decoration:
                                                        TextDecoration.none)),
                                          ],
                                        )),
                                    const SizedBox(width: 15),
                                  ],
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 180),
                                    Text('Dreamsville House',
                                        style: TextStyle(
                                            fontSize: 26.0,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            decoration: TextDecoration.none)),
                                    Text('JL. Sultan Iskandar Muda',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            decoration: TextDecoration.none)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ))),
            ),
            const Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Best for you',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 78, 78, 78),
                              decoration: TextDecoration.none)),
                      Text('See more',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 78, 78, 78),
                              decoration: TextDecoration.none))
                    ],
                  )),
            ),
            Expanded(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 200,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'lib/src/assets/images/s-house1.png'), // Replace with your image path
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Orchad House',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          color:
                                              Color.fromARGB(255, 78, 78, 78),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  const Text('Rp 2.5000.000/Year',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w200,
                                          color:
                                              Color.fromARGB(255, 47, 183, 242),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromARGB(0, 16, 16, 16),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Row(
                                        children: [
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bed.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 15),
                                          Text('6 Bedroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bath.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(width: 15),
                                          Text('2 Bathroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 200,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'lib/src/assets/images/s-house1.png'), // Replace with your image path
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Orchad House',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          color:
                                              Color.fromARGB(255, 78, 78, 78),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  const Text('Rp 2.5000.000/Year',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w200,
                                          color:
                                              Color.fromARGB(255, 47, 183, 242),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromARGB(0, 16, 16, 16),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Row(
                                        children: [
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bed.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 15),
                                          Text('6 Bedroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bath.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(width: 15),
                                          Text('2 Bathroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  width: 200,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'lib/src/assets/images/s-house1.png'), // Replace with your image path
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Orchad House',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          color:
                                              Color.fromARGB(255, 78, 78, 78),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  const Text('Rp 2.5000.000/Year',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w200,
                                          color:
                                              Color.fromARGB(255, 47, 183, 242),
                                          decoration: TextDecoration.none)),
                                  SizedBox(height: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:
                                            const Color.fromARGB(0, 16, 16, 16),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Row(
                                        children: [
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bed.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 15),
                                          Text('6 Bedroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                          Image(
                                            width: 25,
                                            height: 25,
                                            image: AssetImage(
                                                'lib/src/assets/images/bath.png'), // Replace with your image path
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(width: 15),
                                          Text('2 Bathroom',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  decoration:
                                                      TextDecoration.none)),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          )
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
        previousPageTitle: '',
      ),
      child: _buildBody(),
    );
  }
}
