import 'package:flutter/material.dart';

class DecorationBoxDemo extends StatelessWidget {
  const DecorationBoxDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //BoxDecoration
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.orange.shade700]),
          borderRadius: BorderRadius.circular(3.0),
          boxShadow: [BoxShadow(color: Colors.black54, offset: Offset(0, 0), blurRadius: 2.0)]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
