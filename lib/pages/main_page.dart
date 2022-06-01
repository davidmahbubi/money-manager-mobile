import 'package:flutter/material.dart';
import 'package:money_manager_mobile/components/bottom_navbar.dart';
import 'package:money_manager_mobile/components/pages_list.dart';
import 'package:money_manager_mobile/pages/create_transaction.dart';

class MainPage extends StatefulWidget {
  final List<Map<String, dynamic>> pages = pagesList;

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Manager App'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: widget.pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavbar(
        pages: widget.pages,
        onTap: changePage,
        currentIndex: selectedIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const CreateTransaction(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
