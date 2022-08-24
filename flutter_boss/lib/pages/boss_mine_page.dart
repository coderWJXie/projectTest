import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return           Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(1.0, 1.0, 15.0, 0),
              child: Image.network(
                  'https://img.bosszhipin.com/beijin/mcs/chatphoto/20161230/b0df9f099f1d6db1937bc78068fb4c15760bb3f59f760cd45f5945e615392f6f.jpg',
                  width: 50,
                  height: 50
              )
          )
        ]
    );
  }
}