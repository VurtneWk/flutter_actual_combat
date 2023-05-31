import 'package:flutter/material.dart';
import 'package:flutter_actual_combat/char02/NewRoute.dart';
import 'package:flutter_actual_combat/char04/UnconstrainedBoxDemo.dart';

import 'char03/ButtonDemo.dart';
import 'char03/ImagesDemo.dart';
import 'char03/TextDemo.dart';
import 'char04/ConstraintsDemo.dart';
import 'char04/FlexLayoutDemo.dart';
import 'char04/FlowLayoutDemo.dart';
import 'char04/LinearLayoutDemo.dart';
import 'char05/DecorationDemo.dart';
import 'char05/PaddingTestRoute.dart';
import 'char05/TransformDemo.dart';
import 'other/anim/FadeAppTest.dart';

void main() {
  runApp(MyApp());
  // runApp(FadeAppTest());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            //UnconstrainedBox 举例
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            )
          ],
        ),
        body:
            // Container(
            //   child: Column(
            //     children: [
            //       TextButton(child: Text("to new route"), onPressed: () {
            //         Navigator.push(context, MaterialPageRoute(builder: (context){
            //           return NewRoute();
            //         }));
            //       })
            //     ],
            //   ),
            // )

            // TextDemo()
            // ButtonDemo()
            // ImagesDemo()
            // RowDemo()
            // ConstrainedBoxDemo()
            // UnconstrainedBoxDemo()
            // RowDemo()
            // RowDemo2()
            // ColumnDemo()
            // RowDemo3()
            // FlexDemo()
            // WrapDemo()

            // PaddingTestRoute()
            // DecorationBoxDemo()
            Center(
          child: TransformDemo(),
        ));
  }
}
