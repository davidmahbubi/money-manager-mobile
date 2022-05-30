import 'package:flutter/material.dart';
import 'package:money_manager_mobile/constants/enums.dart';
import 'package:money_manager_mobile/utils/helper.dart';

class TopTransactionSummary extends StatelessWidget {
  final double income;
  final double expenses;

  const TopTransactionSummary({
    super.key,
    required this.income,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(20, 0, 0, 0)),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TransactionSummaryItem(
              TransactionType.neutral,
              'Income',
              income,
            ),
          ),
          Expanded(
            child: TransactionSummaryItem(
              TransactionType.income,
              'Expenses',
              expenses,
            ),
          ),
          Expanded(
            child: TransactionSummaryItem(
              TransactionType.expense,
              'Total',
              income - expenses,
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionSummaryItem extends StatelessWidget {
  final String title;
  final double value;
  final TransactionType transactionType;

  const TransactionSummaryItem(
    this.transactionType,
    this.title,
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title),
        Text(
          value.toString(),
          style: TextStyle(color: transactionTypeColor(transactionType)),
        ),
      ],
    );
  }
}
