import 'package:flutter/material.dart';
import 'package:flutter_boss/pages/boss_app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boss直聘',
      debugShowCheckedModeBanner: false,
      // 暗黑模式
      theme: ThemeData(
        // 深色、浅色
        brightness: Brightness.light,
        // 主色（决定导航栏颜色）
        primaryColor: const Color.fromARGB(215, 0, 215, 198)
      ),
      home: const AppPage(),
    );
  }
}


