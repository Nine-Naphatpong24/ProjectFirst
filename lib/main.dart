import 'package:flutter/material.dart';
import 'package:projectfirst/page/home_screen.dart';
import 'package:projectfirst/page/profile_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {"/": (context) => const Homepage()},
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List screens = [
    HomeScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("English Learn"),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey, 
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home), 
            ),

            BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person), 
            ),
        ],
      ),
    );
  }
}
