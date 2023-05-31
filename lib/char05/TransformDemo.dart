import 'package:flutter/material.dart';

class TransformDemo extends StatelessWidget {
  const TransformDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget demo01() {
      return Transform(
          alignment: Alignment.topRight,
          transform: Matrix4.skewY(0.3),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
            child: const Text('Apartment for rent!'),
          ));
    }

    return Container(
      color: Colors.black,
      child: demo01(),
    );
  }
}
