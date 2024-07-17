import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabTwo extends StatefulWidget {
  static const title = "LabOne";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const LabTwo({
    super.key,
  });

  @override
  State<LabTwo> createState() => _LabTwoState();
}

class _LabTwoState extends State<LabTwo> {
  late String _status = 'INIT';

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

  Future<int> submitting(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    return seconds;
  }

  _submit() {
    setState(() {
      _status = 'START';
    });
    Stream stream = Stream.fromFuture(submitting(2));
    stream.listen((event) {
      setState(() {
        _status = 'FINISH';
      });
    });
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Center(
            child: Expanded(
              child: Text(_status == 'FINISH' ? 'Done' : 'Start'),
            ),
          ),
          ElevatedButton(
            onPressed: _status == 'START' ? null : () => _submit(),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
