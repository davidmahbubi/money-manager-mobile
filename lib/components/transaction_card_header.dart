import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_manager_mobile/components/badge.dart';
import 'package:money_manager_mobile/constants/enums.dart';
import 'package:money_manager_mobile/utils/helper.dart';

class TransactionCardHeader extends StatelessWidget {
  final DateTime dateTime;
  final double income;
  final double expense;

  const TransactionCardHeader(
    this.dateTime, {
    super.key,
    required this.income,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5.5),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromARGB(20, 0, 0, 0)),
          bottom: BorderSide(color: Color.fromARGB(20, 0, 0, 0)),
        ),
      ),
      child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                DateFormat('dd').format(dateTime),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    DateFormat('yyyy/MM').format(dateTime),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 2),
                  Badge(
                    child: Text(
                      DateFormat('E').format(dateTime),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
          const TransactionNumeric(
            transactionType: TransactionType.income,
            amount: 20000,
          ),
          const TransactionNumeric(
            transactionType: TransactionType.expense,
            amount: 20000,
          ),
        ],
      ),
    );
  }
}

class TransactionNumeric extends StatelessWidget {
  final TransactionType transactionType;
  final double amount;

  const TransactionNumeric(
      {super.key, required this.transactionType, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        amount.toString(),
        textAlign: TextAlign.right,
        style: TextStyle(
          color: transactionTypeColor(transactionType),
        ),
      ),
    );
  }
}
