import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses_app/models/transaction.dart';

class ListTileBuilder extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;
  final int txIndex;

  ListTileBuilder(this.transactions, this.deleteTransaction, this.txIndex);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Padding(
          padding: EdgeInsets.all(6),
          child: FittedBox(
            child: Text('\$${transactions[txIndex].amount}'),
          ),
        ),
      ),
      title: Text(
        transactions[txIndex].title,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        DateFormat.yMMMd().format(transactions[txIndex].date),
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Theme.of(context).errorColor,
        onPressed: () => deleteTransaction(transactions[txIndex].id),
      ),
    );
  }
}
