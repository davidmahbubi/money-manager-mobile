import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/default_profile_picture.png',
              width: 180,
            ),
            const SizedBox(height: 10),
            const Text(
              'David Mahbubi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 8),
            const Text('ulrichdavid0370@gmail.com'),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: const Text('Sign Out'))
          ],
        ),
      ),
    );
  }
}
