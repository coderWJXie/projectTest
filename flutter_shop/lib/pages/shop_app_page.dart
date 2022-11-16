import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/shop_cart_page.dart';
import 'package:flutter_shop/pages/shop_category_page.dart';
import 'package:flutter_shop/pages/shop_home_page.dart';
import 'package:flutter_shop/pages/shop_mine_page.dart';

class AppPage extends StatefulWidget {
  // // 第一步：在第二个page中设置需要的数据（与iOS一样）
  // // 这里面的属性一般都是final
  // final String appName;
  // const AppPage({Key? key, required this.appName}) : super(key: key);
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  // 这里面的属性一般都不是final
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // // 第三步：第二个page将数据回传
    // Navigator.of(context).pop(widget.appName);
    // 脚手架
    return Scaffold(
      // Stack - https://www.jianshu.com/p/387d730cbe92
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          CategoryPage(),
          CartPage(),
          MinePage()
        ],
      ),
      // 底部状态栏
      // tabBar - 选项卡
      bottomNavigationBar: BottomNavigationBar(
        // 当前位于第几个
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        selectedItemColor: const Color.fromARGB(255, 255, 87, 34),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: '首页',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '分类',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: '购物车',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: '我的',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (index) {
          // 变量改变以后必须调用该方法才能修改界面
          // _selectedIndex = index; // 可以放在这里
          setState(() {
            _selectedIndex = index; // 也可以放在这里
          });
        },
      ),
    );
  }
}

