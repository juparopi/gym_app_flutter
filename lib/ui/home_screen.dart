import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  final _pages = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Ink(
              width: 64,
              height: 32,
              decoration: (_selectedIndex == 0)
                  ? BoxDecoration(
                      color: const Color.fromRGBO(113, 247, 236, 1),
                      borderRadius: BorderRadius.circular(20))
                  : null,
              child: const Icon(Icons.home),
            ),
            label: "Calendario",
          ),
          BottomNavigationBarItem(
            icon: Ink(
              width: 64,
              height: 32,
              decoration: (_selectedIndex == 1)
                  ? BoxDecoration(
                      color: const Color.fromRGBO(113, 247, 236, 1),
                      borderRadius: BorderRadius.circular(20))
                  : null,
              child: const Icon(Icons.fitness_center),
            ),
            label: "Rutinas",
          ),
          BottomNavigationBarItem(
            icon: Ink(
              width: 64,
              height: 32,
              decoration: (_selectedIndex == 2)
                  ? BoxDecoration(
                      color: const Color.fromRGBO(113, 247, 236, 1),
                      borderRadius: BorderRadius.circular(20))
                  : null,
              child: const Icon(Icons.show_chart),
            ),
            label: "Estadisticas",
          ),
          BottomNavigationBarItem(
            icon: Ink(
              width: 64,
              height: 32,
              decoration: (_selectedIndex == 3)
                  ? BoxDecoration(
                      color: const Color.fromRGBO(113, 247, 236, 1),
                      borderRadius: BorderRadius.circular(20))
                  : null,
              child: const Icon(Icons.perm_identity),
            ),
            label: "Social",
          ),
          BottomNavigationBarItem(
            icon: Ink(
              width: 64,
              height: 32,
              decoration: (_selectedIndex == 3)
                  ? BoxDecoration(
                      color: const Color.fromRGBO(113, 247, 236, 1),
                      borderRadius: BorderRadius.circular(20))
                  : null,
              child: const Icon(Icons.perm_identity),
            ),
            label: "Perfil",
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
