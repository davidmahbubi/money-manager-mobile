import 'package:flutter/material.dart';
import 'package:money_manager_mobile/components/create_income_expense_form.dart';
import 'package:money_manager_mobile/components/create_transfer_form.dart';

class TransactionForm extends StatefulWidget {
  final String title;
  const TransactionForm({Key? key, required this.title}) : super(key: key);

  @override
  State<TransactionForm> createState() => TransactionFormState();
}

class TransactionFormState extends State<TransactionForm> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
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
            CreateIncomeExpenseForm(),
            CreateIncomeExpenseForm(),
            CreateTransferForm(),
          ],
        ),
      ),
    );
  }
}
