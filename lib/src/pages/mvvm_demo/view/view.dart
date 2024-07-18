import 'package:chu_hai_long_flutter_10/src/pages/mvvm_demo/model/model.dart';
import 'package:chu_hai_long_flutter_10/src/pages/mvvm_demo/view_model/view_mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoMVVMView extends StatefulWidget {
  const DemoMVVMView({Key? key}) : super(key: key);

  @override
  State<DemoMVVMView> createState() => _DemoMVVMViewState();
}

class _DemoMVVMViewState extends State<DemoMVVMView> {
  late MVVMDemoViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MVVMDemoViewModel();
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.dispose();
  }

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
          ///Streambuilder -> loading -> success -> error
          StreamBuilder<Map<String, dynamic>>(
              stream: _viewModel.humanTotalStream.stream,
              builder: (context, snapshot) {
                final Map<String, dynamic> data = snapshot.data ?? {};
                if (data['isLoading']) {
                  return CircularProgressIndicator();
                } else {
                  if (data['data'] != null) {
                    final human = data['data'] as List<HumanModel>;
                    return Text(
                        'Tổng số người hiện tại ở hệ thống là ${human.length}');
                  } else {
                    return Text('Lỗi hệ thống');
                  }
                }
              }),
          ElevatedButton(
            onPressed: () {
              //call get data user
              _viewModel.getInfoUsers();
            },
            child: const Text('Get Info'),
          )
        ],
      ),
    );
  }
}
