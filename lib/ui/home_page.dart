import 'package:flutter/material.dart';

import 'package:eltacoloco/ui/info_page.dart';
import 'package:eltacoloco/ui/cafe.dart';
import 'package:eltacoloco/ui/churros.dart';
import 'package:eltacoloco/themes/colors.dart';
import 'package:eltacoloco/ui/tacos.dart';
import 'package:eltacoloco/ui/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPageIndex = 0;

  final List<Widget> pages = [
    const Taco(),
    const Churro(),
    const Cafe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightColorScheme.tertiary,
        foregroundColor: lightColorScheme.onTertiary,
        title: const Text(
          "El Taco Loco",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'DancingScript',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoPage()),
                );
              },
              icon: const Icon(Icons.shopping_cart_rounded)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoPage()),
                );
              },
              icon: const Icon(Icons.info_outline)),

        ],
      ),
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        backgroundColor: lightColorScheme.tertiary,
        selectedItemColor: lightColorScheme.onTertiary,
        unselectedItemColor: lightColorScheme.onTertiary,
        onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Tacos",
            icon: Image.asset(
              'assets/icons/icons8-taco-100-2.png',
              height: 32,
            ),
            activeIcon: Image.asset(
              'assets/icons/icons8-taco-100-3.png',
              height: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: "Churros",
            icon: Image.asset(
              'assets/icons/icons8-burrito-100-3.png',
              height: 32,
            ),
            activeIcon: Image.asset(
              'assets/icons/icons8-burrito-100-4.png',
              height: 32,
            ),
          ),
          BottomNavigationBarItem(
            label: "Café",
            icon: Image.asset(
              'assets/icons/icons8-cafe-100-3.png',
              height: 32,
            ),
            activeIcon: Image.asset(
              'assets/icons/icons8-cafe-100-4.png',
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
