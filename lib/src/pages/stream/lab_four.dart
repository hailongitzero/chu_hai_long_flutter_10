import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabFour extends StatefulWidget {
  static const title = "LabOne";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const LabFour({
    super.key,
  });

  @override
  State<LabFour> createState() => _LabFourState();
}

class _LabFourState extends State<LabFour> {
  late List<String> history = [];
  bool showHistory = false;
  double _currentSliderValue = 0.0;
  StreamController<double> streamController = StreamController<double>();

  double factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: streamController.stream,
      builder: (context, snapshot) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('$_currentSliderValue! = ${snapshot.data ?? 0}'),
            CupertinoSlider(
              key: const Key('slider'),
              value: _currentSliderValue,
              divisions: 10,
              max: 10,
              activeColor: CupertinoColors.activeBlue,
              thumbColor: CupertinoColors.activeBlue,
              // This is called when sliding is started.
              onChangeStart: (double value) {},
              // This is called when sliding has ended.
              onChangeEnd: (double value) {
                double result = factorial(value as int);
                streamController.add(result);
                history.add('$value! = $result');
              },
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showHistory = !showHistory;
                });
              },
              child: const Text('History'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  if (showHistory) {
                    return Center(
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            width: 200,
                            height: 30,
                            child: Text(history[index]),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Text('');
                  }
                },
              ),
            )
          ],
        );
      },
    );
  }
}
