import 'package:calculator/calculator.dart';
import 'package:calculator/stateScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    title: 'test',
    home:CalculatorScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('route'),
        leading: Icon(Icons.exit_to_app),
        actions: [Icon(Icons.exit_to_app)],
      ),
      body:
      Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 6, right: 12, bottom: 6, left: 12),
                  margin: EdgeInsets.only(right: 1),
                  color: Color.fromARGB(255, 119, 31, 170),
                  child: Text('News',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        backgroundColor: Color.fromARGB(255, 119, 31, 170),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 6, right: 12, bottom: 6, left: 12),
                  margin: EdgeInsets.only(left: 1),
                  color: Color.fromARGB(255, 119, 31, 170),
                  child: Text('Category',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        backgroundColor: Color.fromARGB(255, 119, 31, 170),
                      )),
                ),
              ),
            ],
          ),
          Row(
            children: [
               Stack(
                 children: [

                 ],
               ),
            ],
          ),
        ],
      ),
    );
  }
}
