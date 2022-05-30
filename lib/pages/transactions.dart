import 'package:flutter/material.dart';
import 'package:money_manager_mobile/components/top_transaction_summary.dart';
import 'package:money_manager_mobile/components/transaction_group_item.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const TopTransactionSummary(
            income: 5000000,
            expenses: 2335000,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return const TransactionGroupItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
