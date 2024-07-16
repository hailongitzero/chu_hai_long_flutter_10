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
  final _items = <String>[];
  final _random = Random();
  final _streamController = StreamController<String>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  void _addItemStream() async {
    int delay = _random.nextInt(5) + 10;
    print(delay);
    int start = 0;
    while (start < delay) {
      if (start >= delay) {
        continue;
      }
      start += 2;
      await Future.delayed(const Duration(seconds: 2));
      String newItem = 'file download no ${_items.length + 1}';
      _streamController.add(newItem);
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
            child: StreamBuilder<String>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (!snapshot.hasData) {
                  return const Text('no data');
                }

                _items.add(snapshot.data!);
                return ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(_items[index]),
                        ),
                        Center(
                            child: CircularProgressIndicator(
                                semanticsLabel: _items.length.toString()))
                      ],
                    );
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => _addItemStream(),
            child: const Text('Download'),
          ),
        ],
      ),
    );
  }
}
