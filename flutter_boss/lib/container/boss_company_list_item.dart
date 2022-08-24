import 'package:flutter/material.dart';

class CompanyListItem extends StatelessWidget {

  const CompanyListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
      // 因为只有一个子widget
      // 所以此处必定有一个布局组件
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // 当容器比较大（比子widget大的多）的时候此属性有作用
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 5.0, top: 5.0, right: 10.0),
              child: Image.network(
                  'https://img.bosszhipin.com/beijin/mcs/chatphoto/20161230/b0df9f099f1d6db1937bc78068fb4c15760bb3f59f760cd45f5945e615392f6f.jpg',
                  width: 50,
                  height: 50
              )
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    '杭州蚂蚁金服信息技术有限公司',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15.0
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 5.0, 5.0)
                ),
                Container(
                  child: const Text(
                    '上海市浦东新区',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 5.0)
                ),
                Container(
                  child: const Text(
                    '互联网｜B轮｜10000人以上',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 5.0, 5.0, 5.0)
                ),
                Container(
                  child: const Text(
                    '热招：资深开放产品技术工程师 等500个职位',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 5.0)
                )
              ]
            ),
          )
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0))
      ),
    );
  }
}