import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final Map transaction;

  ChartBar(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(

        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 10,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.purple
            ),
          ),
          Text(transaction['day']),
          Text(transaction['value'].toString()),
        ],
      ),
    );
  }
}
