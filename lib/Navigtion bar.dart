import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'Home.dart';
import 'kesasdinia.dart';
import 'athkar.dart';
import 'Partage.dart';

class SimpleBottomNavigation extends StatefulWidget {
  const SimpleBottomNavigation({Key? key}) : super(key: key);

  @override
  State<SimpleBottomNavigation> createState() => _SimpleBottomNavigationState();
}

class _SimpleBottomNavigationState extends State<SimpleBottomNavigation> {
  int _selectedIndex = 0;
  BottomNavigationBarType _bottomNavType = BottomNavigationBarType.fixed;

  @override
  void initState() {
    super.initState();
    // Set the initial selected index to 0
    _selectedIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xff809258),
        selectedItemColor: const Color(0xffe5e5e5),
        unselectedItemColor: const Color(0xffa7b294),
        type: _bottomNavType,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 3:
        return CollapsingAppbarPage();
      case 2:
         return Athkar();
      case 1:
        return Stories();
      case 0:
        return SharePage();
      default:
        return CollapsingAppbarPage(); // You can provide a default page here
    }
  }
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.handshake),
    activeIcon: Icon(Icons.handshake_outlined),
    label: 'صدقة جارية ',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.mode_night_outlined),
    activeIcon: Icon(Icons.mode_night_outlined),
    label: 'أحاديث نبوية',
  ),
  BottomNavigationBarItem(
    icon: Icon(FlutterIslamicIcons.solidPrayer),
    activeIcon: Icon(FlutterIslamicIcons.solidPrayer),
    label: 'أذكار',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home_rounded),
    label: 'الصفحة الرئيسية',
  ),
];
