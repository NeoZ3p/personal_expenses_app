import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/transaction_list.dart';

import 'chart.dart';

class MyHomePageBody extends StatelessWidget {
  final List<Transaction> recentTransactions;
  final List<Transaction> userTransactions;
  final Function deleteTransaction;

  MyHomePageBody(
    this.recentTransactions,
    this.userTransactions,
    this.deleteTransaction,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Chart(recentTransactions),
            Transactionlist(
              transactions: userTransactions,
              deleteTransaction: deleteTransaction,
            )
          ],
        ),
      ),
    );
  }
}
