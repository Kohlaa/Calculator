import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorItem extends StatelessWidget {
 // const CalculatorItem({Key? key}) : super(key: key);
 String text;
 Function voidCallBack;
 CalculatorItem(this.text,this.voidCallBack);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        voidCallBack(text);
        debugPrint(text);
      },
      child: Text('$text' ,  style: Theme.of(context).textTheme.headline5),
    ));
  }
}
