import 'package:flutter/material.dart';
import 'package:money_manager_mobile/constants/enums.dart';
import 'package:money_manager_mobile/pages/transaction_form.dart';
import 'package:money_manager_mobile/utils/helper.dart';

class TransactionCardItem extends StatelessWidget {
  final String category;
  final String account;
  final String title;
  final double amount;
  final TransactionType transactionType;

  const TransactionCardItem({
    super.key,
    required this.category,
    required this.account,
    required this.title,
    required this.amount,
    required this.transactionType,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>
                const TransactionForm(title: 'Edit Transaction'),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(20, 0, 0, 0),
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 70,
              child: Text(
                category,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title),
                  const SizedBox(height: 3),
                  Text(
                    account,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 100,
              child: Text(
                amount.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: transactionTypeColor(transactionType),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
