import 'package:flutter/material.dart';

/// Material 库中的按钮
/// 1.按下时都会有“水波动画”（又称“涟漪动画”，就是点击时按钮上会出现水波扩散的动画）。
/// 2.有一个onPressed属性来设置点击回调，当按钮按下时会执行该回调，如果不提供该回调则按钮会处于禁用状态，禁用状态不响应用户点击。

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("漂浮按钮 ElevatedButton")),
          TextButton(onPressed: () {}, child: Text("文本按钮 TextButton")),
          // OutlineButton(onPressed: (){},child: Text("OutlineButton(已过时)")),
          OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
          IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
          ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.send), label: Text("发送 (ElevatedButton)")),
          TextButton.icon(onPressed: () {}, icon: Icon(Icons.add), label: Text("添加 (TextButton)")),
          OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.info), label: Text("详情 (OutlinedButton)"))
        ],
      ),
    );
  }
}
