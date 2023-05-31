import 'package:flutter/material.dart';


/// 其它未举例的尺寸限制类容器 AspectRatio LimitedBox FractionallySizedBox

class ConstrainedBoxDemo extends StatefulWidget {
  const ConstrainedBoxDemo({Key? key}) : super(key: key);

  @override
  State<ConstrainedBoxDemo> createState() => _ConstrainedBoxDemoState();
}

class _ConstrainedBoxDemoState extends State<ConstrainedBoxDemo> {
  Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 80.0),
        child: Container(
          height: 5.0, //这里的5 无效
          child: redBox,
        ),
      ),
    );
  }
}
