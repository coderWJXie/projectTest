import 'package:flutter/material.dart';
import 'package:flutter_boss/pages/boss_company_dart.dart';
import 'package:flutter_boss/pages/boss_message_page.dart';
import 'package:flutter_boss/pages/boss_mine_page.dart';
import 'package:flutter_boss/pages/boss_position_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 只要有导航栏首先想到Scaffold
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          PositionPage(),
          CompanyPage(),
          MessagePage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11.0,
        unselectedFontSize: 11.0,
        selectedItemColor: const Color.fromARGB(215, 0, 215, 198),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_navigation_bar/tab_position_normal.png',
              width: 30,
              height: 24
            ),
            activeIcon: Image.asset(
              'assets/bottom_navigation_bar/tab_position_active.png',
              width: 30,
              height: 24
            ),
            label: '职位'
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_navigation_bar/tab_company_normal.png',
              width: 30,
              height: 24
            ),
            activeIcon: Image.asset(
              'assets/bottom_navigation_bar/tab_company_active.png',
              width: 30,
              height: 24
            ),
            label: '公司'
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_navigation_bar/tab_message_normal.png',
              width: 30,
              height: 24
            ),
            activeIcon: Image.asset(
              'assets/bottom_navigation_bar/tab_message_active.png',
              width: 30,
              height: 24
            ),
            label: '消息'
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_navigation_bar/tab_mine_normal.png',
              width: 30,
              height: 24
            ),
            activeIcon: Image.asset(
              'assets/bottom_navigation_bar/tab_mine_active.png',
              width: 30,
              height: 24
            ),
            label: '我的'
          )
        ],
        // 每次点击tab就会修改_selectedIndex并且重绘
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}