import 'package:fashion_ai_app/explore_screen.dart';
import 'package:fashion_ai_app/profile_screen.dart';
import 'package:fashion_ai_app/recommendations_screen.dart';
import 'package:fashion_ai_app/wardrobe_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(KitengeFashionApp());
}

class KitengeFashionApp extends StatelessWidget {
  const KitengeFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitenge Fashion',
      theme: ThemeData(
        primaryColor: Colors.orange,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ExploreScreen(),
    WardrobeScreen(),
    RecommendationsScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Wardrobe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recommend),
            label: 'Recommendations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
