import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Color color;
  final Widget child;

  const Badge({super.key, required this.child, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: child,
    );
  }
}
