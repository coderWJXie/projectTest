import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    // 任何页面都需要Scaffold
    return Scaffold(
      backgroundColor: Colors.white,
      // 导航栏
      appBar: AppBar(
        title: const Text(
          '登录',
          // 兼容安卓
          textAlign: TextAlign.center
        ),
      ),
      // 兼容全面屏手机
      body: SafeArea(
        child: Container(

        ),
      ),
    );
  }
}