import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/views/page_dump.dart';
import 'package:flutter_tonetrainer/views/page_reward.dart';
import 'package:flutter_tonetrainer/views/page_theory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget> pages = [PageDump(), PageTheory(), const PageReward()];
  void btnClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Dump'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Theory'),
          BottomNavigationBarItem(
              icon: Icon(Icons.workspace_premium_sharp), label: 'Reward')
        ],
        currentIndex: selectedIndex,
        onTap: btnClick,
      ),
    );
  }
}
