import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Stats extends StatelessWidget {
  final Map<String, double> expenseDataMap = const {
    'Food & Drinks': 120000,
    'Transportation': 30000,
    'Entertainment': 65000,
  };

  final Map<String, double> incomeDataMap = const {
    'Salary': 90000,
    'Allowance': 60000,
    'Bonus': 25000,
  };

  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'Income'),
              Tab(text: 'Expense'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                PieChart(
                  dataMap: incomeDataMap,
                  legendOptions: const LegendOptions(
                    legendShape: BoxShape.circle,
                  ),
                ),
                PieChart(
                  dataMap: expenseDataMap,
                  legendOptions: const LegendOptions(
                    legendShape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
