import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MaterialApp(home: expense()));
}

class expense extends StatelessWidget {
  List<transaction> transactions = [
    transaction(id: 't1', title: 'Studs', amount: 5000, date: DateTime.now()),
    transaction(id: 't2', title: 'Football', amount: 1000, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expense App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.purple,
              child: Text(
                'Chart',
                textAlign: TextAlign.center,
              ),
              elevation: 5,
            ),
          ),
          Card(
            color: Colors.pink,
            child: Text('List'),
          )
        ],
      ),
    );
  }
}
