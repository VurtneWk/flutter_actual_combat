import 'package:flutter/cupertino.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /**
     * const Text(
        String this.data, {
        Key? key,
        this.style,
        this.strutStyle,
        this.textAlign,
        this.textDirection,
        this.locale,
        this.softWrap,
        this.overflow,
        this.textScaleFactor,
        this.maxLines,
        this.semanticsLabel,
        this.textWidthBasis,
        this.textHeightBehavior,
        })
     */
    return Column(
      children: [
        Text(
          "Hello world1",
          textAlign: TextAlign.left,
          style: TextStyle(

          ),
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
