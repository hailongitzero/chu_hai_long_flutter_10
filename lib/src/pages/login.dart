import 'package:chu_hai_long_flutter_10/src/pages/navigator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";
  int wrongCnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage(
              //       'assets/images/bg.jpg'), // Replace with your image path
              //   fit: BoxFit.cover,
              // ),
              ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Image(
                  //   image: AssetImage('assets/images/logo.png'),
                  //   height: 200,
                  //   width: 200,
                  // ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: (value) {
                      RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
                      if (value!.isEmpty) {
                        wrongCnt++;
                        return 'Please enter your username.';
                      }
                      if (!usernameRegex.hasMatch(value)) {
                        wrongCnt++;
                        return "Invalid username";
                      }
                      return null;
                    },
                    onSaved: (newValue) => _username = newValue!,
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true, // Hide password characters
                    validator: (value) {
                      if (value!.isEmpty) {
                        wrongCnt++;
                        return 'Please enter your password.';
                      }
                      if (value != '06/11/1989') {
                        wrongCnt++;
                        return 'Wrong password';
                      }
                      return null;
                    },
                    onSaved: (newValue) => _password = newValue!,
                  ),
                  const SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot password?'),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      if (wrongCnt > 2) {
                        Fluttertoast.showToast(
                            msg: "locked account. wrong over 3 times.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        wrongCnt = 0;
                        return;
                      }
                      if (_formKey.currentState!.validate()) {
                        wrongCnt = 0;
                        _formKey.currentState!.save();
                        Navigator.of(context).push<void>(
                          MaterialPageRoute(
                            builder: (context) => const NavigatorBuilder(),
                          ),
                        );
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
