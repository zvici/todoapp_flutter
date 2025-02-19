import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      const Center(child: Text('Home')),
      const Center(child: Text('Calendar')),
      const Center(child: Text('Add')),
      const Center(child: Text('Focus')),
      const Center(child: Text('Profile')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF363636),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _currentPage,
        onTap: (index) {
          if (index == 2) {
            return;
          }
          setState(() {
            _currentPage = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(_currentPage == 0 ? Iconsax.home_15 : Iconsax.home_2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currentPage == 1 ? Iconsax.calendar_25 : Iconsax.calendar_1,
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(icon: Container(), label: ''),
          BottomNavigationBarItem(
            icon: Icon(_currentPage == 3 ? Iconsax.clock5 : Iconsax.clock),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currentPage == 4 ? Iconsax.setting_21 : Iconsax.setting_2,
            ),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF8687E7),
        ),
        child: IconButton(
          icon: Icon(Icons.add, size: 24),
          color: Colors.white,
          onPressed: () {
            setState(() {
              _currentPage = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
