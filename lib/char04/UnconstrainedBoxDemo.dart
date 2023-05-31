import 'package:flutter/material.dart';

class UnconstrainedBoxDemo extends StatelessWidget {
  UnconstrainedBoxDemo({Key? key}) : super(key: key);

  final Widget redBox =
      DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(//父
        constraints: BoxConstraints(minWidth: 60, minHeight: 100),
        ///通过UnconstrainedBox 来让子ConstrainedBox的大小不被约束
        ///当我们发现已经使用 SizedBox 或 ConstrainedBox 给子元素指定了固定宽高，但是仍然没有效果时，几乎可以断定：已经有父组件指定了约束！
        child: UnconstrainedBox(
          child: ConstrainedBox( //子
              constraints: BoxConstraints(minWidth: 90, minHeight: 20),
              child: redBox),
        ));
  }
}
