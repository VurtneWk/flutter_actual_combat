import 'package:flutter/cupertino.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello world1",
          textAlign: TextAlign.left,
        ),
        Text(
          "Hello world !!!" * 6,
          maxLines: 1,
          overflow: TextOverflow.visible,
        ),
        Text("Hello world", textScaleFactor: 1.5)
      ],
    );
  }
}
