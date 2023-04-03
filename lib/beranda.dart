import 'package:clone_ig/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedBox = 0;
  void _onTap(int index) {
    setState(() {
      _selectedBox = index;
    });
  }

  List<Widget> Pages = [
    Home(),
    Center(
      child: const Text(
        'Search',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: const Text(
        'Reels',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: const Text(
        'Shop',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: const Text(
        'Accounts',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          currentIndex: _selectedBox,
          onTap: _onTap,
          items: [
            // Icons Home
            BottomNavigationBarItem(
              icon: Icon(
                _selectedBox == 0 ? Icons.home : Icons.home_outlined,
                size: 30,
              ),
              label: "Home",
            ),

            // Icons Search
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedBox == 1 ? Icons.search : Icons.search_outlined),
                label: "Search"),

            // Icons Reels
            BottomNavigationBarItem(
                icon: Icon(_selectedBox == 2
                    ? Icons.video_label
                    : Icons.video_label_outlined),
                label: "Reels"),

            // Icons Shop
            BottomNavigationBarItem(
                icon: Icon(_selectedBox == 3
                    ? Icons.shopping_bag
                    : Icons.shopping_bag_outlined),
                label: "Shop"),

            // Icons Account
            BottomNavigationBarItem(
                icon: Icon(_selectedBox == 4
                    ? Icons.account_circle
                    : Icons.account_circle_outlined),
                label: "Account"),
          ]),
      body: Pages[_selectedBox],
    );
  }
}
