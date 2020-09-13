import 'package:flutter/material.dart';

class TransactionEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Nenhuma transação cadastrada',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 25),
        Container(
          height: 200,
          child: Image.asset(
            'assets/images/waiting.png',
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
