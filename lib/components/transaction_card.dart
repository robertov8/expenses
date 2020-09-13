import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              'R\$ ${transaction.value.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                DateFormat('d MMM y').format(transaction.date),
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
