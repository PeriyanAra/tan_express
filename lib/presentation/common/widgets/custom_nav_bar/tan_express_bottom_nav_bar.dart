import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/common/widgets/custom_nav_bar/nav_item.dart';

class TanExpressCustomBottomNavBar extends StatefulWidget {
  const TanExpressCustomBottomNavBar({super.key});

  @override
  State<TanExpressCustomBottomNavBar> createState() => _TanExpressCustomBottomNavBarState();
}

class _TanExpressCustomBottomNavBarState extends State<TanExpressCustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(9.0, 9.0, 9.0, 20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            index: 0,
            isSelected: _selectedIndex == 0,
            onItemTapped: _onItemTapped,
            iconPath: 'assets/icons/bell.svg',
            activeIconPath: 'assets/icons/active_bell.svg',
            label: 'NYHETER',
          ),
          NavItem(
            index: 1,
            isSelected: _selectedIndex == 1,
            onItemTapped: _onItemTapped,
            iconPath: 'assets/icons/sun.svg',
            activeIconPath: 'assets/icons/active_sun.svg',
            label: 'ANLÄGGNING',
          ),
          NavItem(
            index: 2,
            isSelected: _selectedIndex == 2,
            onItemTapped: _onItemTapped,
            iconPath: 'assets/icons/smile.svg',
            activeIconPath: 'assets/icons/active_smile.svg',
            label: 'MIN PROFIL',
          ),
        ],
      ),
    );
  }
}
