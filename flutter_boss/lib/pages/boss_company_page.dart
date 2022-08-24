import 'package:flutter/material.dart';
import 'package:flutter_boss/container/boss_company_list_item.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {

  @override
  void initState() {
    super.initState();
    // 获取数据

  }

  @override
  Widget build(BuildContext context) {
    // 有导航栏的page我们首先想到的就是Scaffold
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(215, 0, 215, 198),
        centerTitle: true,
        title: const Text(
            '公 司',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
            )
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            // 这里需要一个widget（类似iOS中的cell）
            return const CompanyListItem();
          },
          itemCount: 10,
        ),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 245, 245, 245)
        ),
      )
    );
  }
}