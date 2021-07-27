import 'package:flutter/material.dart';

class NoTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'No transactions added yet!',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 10,
        ),
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
