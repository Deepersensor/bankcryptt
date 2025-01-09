import 'package:flutter/material.dart';
import 'shared/widgets/bottom_nav_bar.dart';
import 'shared/widgets/app_bar_with_actions.dart';
// ...existing code...

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Handle navigation based on index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithActions(
        title: 'BankCryptt',
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),
      body: // ...existing code for different pages based on _currentIndex...
      ,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
// ...existing code...
