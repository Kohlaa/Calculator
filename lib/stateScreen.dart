import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return TestAppState();
  }
}

class TestAppState extends State {
   int cnt=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$cnt',style: Theme.of(context).textTheme.headline3,),
              FloatingActionButton(onPressed: (){
                cnt++;
                 setState(() {

                 });
              },child:Icon(Icons.add) ),
            ]),
      ),
    );
  }
}
