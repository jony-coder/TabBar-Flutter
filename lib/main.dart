import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'One.dart';
import 'Two.dart';

void main(){
  
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.camera),),
                Tab(icon: Icon(Icons.message),)
              ],),
            ),

            body: TabBarView(children: [
              One(),
              Two()
            ],),
      )),
    );
  }
}
