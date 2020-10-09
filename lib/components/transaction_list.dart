import 'package:expenses/components/transaction_card.dart';
import 'package:expenses/components/transaction_empty.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  TransactionList(this.transactions, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? TransactionEmpty()
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) => TransactionCard(
                transactions[index],
                this.onRemove,
              ),
            ),
    );
  }
}
