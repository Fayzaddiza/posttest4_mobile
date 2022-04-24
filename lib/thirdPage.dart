import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  final List<BottomNavigationBarItem> _bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "profil",
    ),
  ];

  final List<Tab> _myTabBars = [
    Tab(text: "Keranjang"),
    Tab(text: "Menu"),
  ];

  final List<Icon> _myTabBarView = [
    Icon(Icons.shop),
    Icon(Icons.home),
  ];

  int indexBottom = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabBars.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffc1bddc),
          title: Text(
            "City Car Rental",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Color(0xff000000),
            ),
          ),
          bottom: TabBar(
            tabs: _myTabBars,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottom,
          onTap: (int index) {
            setState(() {
              indexBottom = index;
            });
          }, 
          items: _bottomItem,
        ),
        body: TabBarView(
          children: _myTabBarView,
        ),
      ),
    );
  }
}
