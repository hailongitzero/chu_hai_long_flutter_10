import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MvvmDemoPage extends StatefulWidget {
  static const title = "MVVM";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const MvvmDemoPage({
    super.key,
  });

  @override
  State<MvvmDemoPage> createState() => _MvvmDemoPageState();
}

class _MvvmDemoPageState extends State<MvvmDemoPage> {
  final dio = Dio();
  late dynamic response;

  @override
  void dispose() {
    super.dispose();
  }

  _getJsonData() async {
    response = await dio.get('https://api.randomuser.me/?results=3');
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
          ElevatedButton(
            onPressed: () => _getJsonData(),
            child: const Text('Download'),
          ),
        ],
      ),
    );
  }
}
