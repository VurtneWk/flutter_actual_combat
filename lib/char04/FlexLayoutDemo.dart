import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            ///Expanded 只能作为 Flex 的孩子
            Expanded(
              child: Container(
                height: 30.0,
                color: Colors.red,
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                height: 30.0,
                color: Colors.green,
              ),
              flex: 2,
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 100,
            ///Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                  flex: 2,
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    height: 20,
                    color: Colors.green,
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
