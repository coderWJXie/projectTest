import 'package:flutter/material.dart';
import 'package:flutter_sdk/dream_sdk.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          '骏梦sdkdemo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 400,
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            child: Text(
              _text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0
              )
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      DreamSDK().init('', (isOk) {
                        if (!isOk) {
                          setState(() {
                            _text = _text + '初始化成功\n';
                          });
                        }
                      });
                    },
                    child: const Text(
                        '初始化',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              ),
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '登录成功\n';
                      });
                    },
                    child: const Text(
                        '登录',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              )
           ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '登出成功\n';
                      });
                    },
                    child: const Text(
                        '登出',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              ),
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '支付成功\n';
                      });
                    },
                    child: const Text(
                        '支付6元',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '进入用户中心成功\n';
                      });
                    },
                    child: const Text(
                        '用户中心',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              ),
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '切换账号成功\n';
                      });
                    },
                    child: const Text(
                        '切换账号',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = _text + '支付成功\n';
                      });
                    },
                    child: const Text(
                        '支付30元',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              ),
              Ink(
                width: 100,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _text = '';
                      });
                    },
                    child: const Text(
                        '清除面板',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                        )
                    )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}