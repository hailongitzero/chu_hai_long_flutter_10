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
  StreamController<String> streamControler = StreamController<String>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: _buildBody(),
    );
  }

  Future<void> _submit() async {
    streamControler.add('START');
    await Future.delayed(const Duration(seconds: 2));
    streamControler.add('FINISH');
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          StreamBuilder(
              stream: streamControler.stream,
              builder: (context, snapshot) {
                return Column(
                  children: [
                    Text(snapshot.data == 'FINISH' ? 'Done' : 'Start'),
                    ElevatedButton(
                      onPressed:
                          snapshot.data == 'START' ? null : () => _submit(),
                      child: const Text('Submit'),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
