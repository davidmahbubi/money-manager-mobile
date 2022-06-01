import 'package:flutter/material.dart';
import 'package:money_manager_mobile/components/create_expense.dart';

class CreateTransaction extends StatefulWidget {
  const CreateTransaction({Key? key}) : super(key: key);

  @override
  State<CreateTransaction> createState() => CreateTransactionState();
}

class CreateTransactionState extends State<CreateTransaction> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Transaction'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: 'Income'),
              Tab(text: 'Expense'),
              Tab(text: 'Transfer')
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Text('Income Tab'),
            CreateExpense(),
            Text('Transfer Tab'),
          ],
        ),
      ),
    );
  }
}
