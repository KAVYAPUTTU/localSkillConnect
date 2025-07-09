import 'package:flutter/material.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/Bookingspage/bookings_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/homepage/home_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/profilepage/profile_page.dart';
import 'package:localskillconnect/Screens/Home/mainscreen/walletpage/wallet_page.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedindex = 0;

  final List<Widget> _tabs = [
    _buildTabNavigator( HomePage()),
    _buildTabNavigator(const WalletPage()),
    _buildTabNavigator(const BookingsPage()),
    _buildTabNavigator(const ProfilePage()),
  ];

  static Widget _buildTabNavigator(Widget child) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => child,
        );
      },
    );
  }

  void _onTap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedindex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        backgroundColor: Colors.white,
        currentIndex: _selectedindex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/img/wallet.png',
                width: 24,
                height: 24,
                color: _selectedindex == 1
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/img/bookings.png',
                width: 24,
                height: 24,
                color: _selectedindex == 2
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/img/profile.png',
                width: 24,
                height: 24,
                color: _selectedindex == 3
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
