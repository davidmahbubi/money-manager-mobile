import 'package:flutter/material.dart';
import 'package:money_manager_mobile/constants/enums.dart';
import 'package:money_manager_mobile/components/transaction_card_header.dart';
import 'package:money_manager_mobile/components/transaction_card_item.dart';

class TransactionGroupItem extends StatelessWidget {
  const TransactionGroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TransactionCardHeader(
            DateTime.now(),
            expense: 100000,
            income: 5000000,
          ),
          const TransactionCardItem(
            account: 'Cash',
            amount: 10000,
            category: 'Food & Drinks',
            title: 'Buy a Hotdog',
            transactionType: TransactionType.expense,
          ),
        ],
      ),
    );
  }
}
