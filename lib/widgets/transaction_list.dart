import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/list_view_builder.dart';
import 'package:personal_expenses_app/widgets/no_transactions.dart';

class Transactionlist extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  Transactionlist(
      {required this.transactions, required this.deleteTransaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475,
      child: transactions.isEmpty
          ? NoTransactions()
          : ListViewBuilder(transactions, deleteTransaction),
    );
  }
}
