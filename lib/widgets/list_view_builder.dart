import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/list_tile_builder.dart';

class ListViewBuilder extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  ListViewBuilder(this.transactions, this.deleteTransaction);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            elevation: 5,
            child: ListTileBuilder(transactions, deleteTransaction, index));
      },
      itemCount: transactions.length,
    );
  }
}
