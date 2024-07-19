import 'dart:async';
import 'package:flutter/cupertino.dart';

class LabThree extends StatefulWidget {
  static const title = "LabOne";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const LabThree({
    super.key,
  });

  @override
  State<LabThree> createState() => _LabThreeState();
}

class _LabThreeState extends State<LabThree> {
  late String showtime;
  final stream =
      Stream.periodic(const Duration(seconds: 1), (count) => count).take(180);

  @override
  void initState() {
    super.initState();
  }

  String timeCoverter(int time) {
    return time ~/ 60 > 0 ? '${time ~/ 60}p${time % 60}s' : '${time % 60}s';
  }

  @override
  void dispose() {
    debugPrint('disposed');
    super.dispose();
  }

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
          Center(
            child: StreamBuilder<int>(
                stream: stream,
                builder: (context, snapshot) {
                  return Expanded(
                    child: Text(timeCoverter(snapshot.data ?? 0)),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
