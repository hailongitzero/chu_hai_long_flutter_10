import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  static const title = "Profile";
  static const icon = ImageIcon(
    AssetImage("lib/src/assets/images/user.png"),
    color: Color.fromARGB(255, 252, 252, 252),
  );
  const DownloadPage({
    super.key,
  });

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  final _random = Random();
  late List<Download> _download;

  @override
  initState() {
    super.initState();
    _download = [
      Download(
          'file 1', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 2', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 3', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 4', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 5', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 6', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 7', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 8', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 9', _random.nextInt(10) + 5, 0, StreamController<String>()),
      Download(
          'file 10', _random.nextInt(10) + 5, 0, StreamController<String>()),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _downloadStart() async {
    int delay = _random.nextInt(5) + 10;
    int start = 0;
    int step = 0;
    while (start <= delay) {
      if (start > delay) {
        continue;
      }
      start++;
      await Future.delayed(const Duration(seconds: 1));
      for (var i = 0; i < _download.length; i++) {
        step = ((start / _download[i].size) * 100).round();
        _download[i].progress = step >= 100 ? 100 : step as double;
        _download[i].streamControler.add(_download[i].progress.toString());
      }
    }
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
          Expanded(
              child: ListView.builder(
            itemCount: _download.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Center(
                      child: StreamBuilder<String>(
                    stream: _download[index].streamControler.stream,
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          Center(
                              child: LinearProgressIndicator(
                                  value: _download[index].progress / 100)),
                          ListTile(
                            title: Text(
                                'File name: ${_download[index].name} - Percent: ${snapshot.data ?? 0}%'),
                          )
                        ],
                      );
                    },
                  )),
                ],
              );
            },
          )),
          ElevatedButton(
            onPressed: () => _downloadStart(),
            child: const Text('Download'),
          ),
        ],
      ),
    );
  }
}

class Download {
  String name;
  double size;
  double progress;
  StreamController<String> streamControler;
  Download(this.name, this.size, this.progress, this.streamControler);
}
