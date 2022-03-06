import 'package:flutter/material.dart';
import 'package:food/screens/FoodDetailsPage.dart';
import 'package:food/screens/FoodOrderPage.dart';
import 'package:food/screens/Home1Page.dart';
import 'package:food/screens/SignInPage.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController=PageController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _screens = [
    Home1Page(),FoodDetailsPage(),FoodOrderPage(),SignInPage(),

  ];

  void _onPagechanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onItemTapped(int index){
    _pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPagechanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar:BottomNavigationBar(
        onTap: _onItemTapped,
        items:[
          BottomNavigationBarItem(

            icon: Icon(Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            label: 'Near By',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'Account',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,


      ),
    );
  }
}
