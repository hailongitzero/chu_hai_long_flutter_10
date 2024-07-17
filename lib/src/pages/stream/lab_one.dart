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
  late int _count = 0;
  // StreamSubscription<int>? _subscription;
  final stream =
      Stream.periodic(const Duration(seconds: 5), (count) => count).take(12);

  @override
  void initState() {
    super.initState();
    _counting();
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

  _counting() {
    stream.listen((count) {
      setState(() {
        _count = count;
      });
    });
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Expanded(
            child: Text(_count.toString()),
          ),
        ],
      ),
    );
  }
}
