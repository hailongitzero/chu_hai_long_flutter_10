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
  // bool showHistory = false;
  // double _currentSliderValue = 0.0;
  Payload payload = Payload();
  StreamController<StreamData> streamController =
      StreamController<StreamData>();

  double factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<StreamData>(
      stream: streamController.stream,
      builder: (context, snapshot) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
                '${snapshot.data != null ? snapshot.data!.payload.step : 0}! = ${snapshot.data != null ? snapshot.data!.payload.result : 0}'),
            CupertinoSlider(
              key: const Key('slider'),
              value: snapshot.data != null ? snapshot.data!.payload.step : 0,
              divisions: 10,
              max: 10,
              activeColor: CupertinoColors.activeBlue,
              thumbColor: CupertinoColors.activeBlue,
              // This is called when sliding is started.
              onChangeStart: (double value) {},
              // This is called when sliding has ended.
              onChangeEnd: (double value) {
                double result = factorial(value as int);
                payload.result = result;
                streamController.add(StreamData('Result', payload));
                history.add('$value! = $result');
              },
              onChanged: (double value) {
                payload.step = value;
                streamController.add(StreamData('Slide', payload));
              },
            ),
            ElevatedButton(
              onPressed: () {
                payload.showHistory = !payload.showHistory;
                streamController.add(StreamData('History', payload));
              },
              child: const Text('History'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  if (snapshot.data?.payload != null &&
                      snapshot.data!.payload.showHistory) {
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

class StreamData {
  String type;
  Payload payload;
  StreamData(this.type, this.payload);
}

class Payload {
  double result = 0;
  double step = 0;
  bool showHistory = false;

  Payload({double result = 0, double step = 0, bool showHistory = false});
}
