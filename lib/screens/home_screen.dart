import 'package:flutter/material.dart';
import 'package:loginapp/screens/cart.dart';
import 'package:loginapp/screens/catalogue_screen.dart';
import 'package:loginapp/screens/front_screen.dart';
import 'package:loginapp/screens/location_screen.dart';
import 'package:loginapp/screens/profile.dart';

import 'my_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> btmNavItem = [
    BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.grey[200]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.menu_book_rounded),
        label: "Catalogue",
        backgroundColor: Colors.grey[200]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.location_on_outlined),
        label: "Location",
        backgroundColor: Colors.grey[200]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.location_on_outlined),
        label: "My List",
        backgroundColor: Colors.grey[200]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.list_alt_rounded),
        label: "My Favs",
        backgroundColor: Colors.grey[200]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: "Profile",
        backgroundColor: Colors.grey[200]),
  ];

  List<Widget> body = [
    const FrontScreen(),
    const Catalogue(),
    const LocationScreen(),
    const Cart(),
    const MyList(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: const Text(
          "ShopsMart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          if (_selectedIndex == 1)
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
        ],
      ),
      body: body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: btmNavItem,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    );
  }

  Widget createCard(String path) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image(image: AssetImage(path)),
    );
  }
}
