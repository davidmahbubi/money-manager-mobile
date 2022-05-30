import 'package:flutter/material.dart';
import 'package:money_manager_mobile/constants/enums.dart';

Color transactionTypeColor(TransactionType transactionType) {
  switch (transactionType) {
    case TransactionType.expense:
      return Colors.red;
    case TransactionType.income:
      return Colors.blue;
    case TransactionType.neutral:
    case TransactionType.transfer:
      return Colors.grey;
  }
}
