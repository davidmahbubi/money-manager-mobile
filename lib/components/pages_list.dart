import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_mobile/pages/transactions.dart';

const List<Map<String, dynamic>> pagesList = [
  {
    'title': 'Transaction',
    'icon': FaIcon(FontAwesomeIcons.arrowsLeftRight),
    'page': Transactions(),
  },
  {
    'title': 'Stats',
    'icon': FaIcon(FontAwesomeIcons.chartArea),
    'page': Transactions(),
  },
  {
    'title': 'Account',
    'icon': FaIcon(FontAwesomeIcons.coins),
    'page': Transactions(),
  },
];
