import 'package:flutter/material.dart';
import 'package:personal_finance/model/Transaction.dart';
import 'package:personal_finance/widgets/new_transaction.dart';
import 'package:personal_finance/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'new shoes', amount: 20.21, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 40.21, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(transactions)],
    );
  }
}
