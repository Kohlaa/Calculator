import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculator_item.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 5),
            child: Text(
              '$result',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorItem('7', onBtnClicked),
              CalculatorItem('8', onBtnClicked),
              CalculatorItem('9', onBtnClicked),
              CalculatorItem('*', onOperatorClicked),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorItem('4', onBtnClicked),
              CalculatorItem('5', onBtnClicked),
              CalculatorItem('6', onBtnClicked),
              CalculatorItem('/', onOperatorClicked),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorItem('1', onBtnClicked),
              CalculatorItem('2', onBtnClicked),
              CalculatorItem('3', onBtnClicked),
              CalculatorItem('+', onOperatorClicked),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CalculatorItem('0', onBtnClicked),
              CalculatorItem('.', onBtnClicked),
              CalculatorItem('=', onEqualClicked),
              CalculatorItem('-', onOperatorClicked),
            ],
          ),
        ),
      ]),
    );
  }

  String res = '';
  String op = '';

  String calc(String rhs, String op, String res) {
    if (op == '+') {
      double n1 = double.parse(rhs);
      double n2 = double.parse(res);
      double sum = n1 + n2;
      String ans = sum.toString();
      return ans;
    } else if (op == '-') {
      double n1 = double.parse(res);
      double n2 = double.parse(rhs);
      double sub = n1 - n2;
      String ans = sub.toString();
      return ans;
    } else if (op == '*') {
      double n1 = double.parse(rhs);
      double n2 = double.parse(res);
      double mul = n1 * n2;
      String ans = mul.toString();
      return ans;
    } else if (op == '/') {
      double n1 = double.parse(rhs);
      double n2 = double.parse(res);
      double div = n2 / n1;
      String ans = div.toString();
      return ans;
    }
    return '';
  }

  void onOperatorClicked(String operator) {
    if (op.isEmpty) {
      res = result;
    } else {
      String rhs = result;
      res = calc(rhs, op, res);
    }
    debugPrint(res);
    op = operator;
    result = '';
    setState(() {});
  }

  onEqualClicked(String equalOperator) {
    String rhs = result;
    res = calc(rhs, op, res);
    result = res;
    res = '';
    op = '';
    setState(() {});
  }

  void onBtnClicked(String text) {
    setState(() {
      result += text;
    });
  }
}
