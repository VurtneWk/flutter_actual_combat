import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(image: AssetImage("assets/images/avatar.png"), width: 100.0,),
          Image.asset("assets/images/avatar.png",width: 100.0),
          Image(image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),width: 100.0,),
          Image.network("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",width: 100.0,)
        ],
      ),
    );
  }
}
