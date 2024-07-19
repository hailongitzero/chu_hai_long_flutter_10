import 'dart:async';
import 'package:flutter/cupertino.dart';

class LabOne extends StatefulWidget {
  static const title = "LabOne";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const LabOne({
    super.key,
  });

  @override
  State<LabOne> createState() => _LabOneState();
}

class _LabOneState extends State<LabOne> {
  late Stream stream =
      Stream.periodic(const Duration(seconds: 5), (count) => count).take(12);

  @override
  void initState() {
    super.initState();
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
          StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                return Text(
                    snapshot.data != null ? snapshot.data.toString() : '0');
              })
        ],
      ),
    );
  }
}
