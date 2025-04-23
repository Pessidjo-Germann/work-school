import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
           activeIcon: Icon(Icons.shopping_bag),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border_outlined),
           activeIcon: Icon(Icons.bookmark),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
           activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black87, 
      unselectedItemColor: Colors.grey,  
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed, 
      showUnselectedLabels: true,
      elevation: 5.0,  
      backgroundColor: Colors.white, 
    );
  }
}
