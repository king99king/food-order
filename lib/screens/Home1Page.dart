import 'package:flutter/material.dart';
import 'package:food/widgets/BestFoodWidget.dart';
import 'package:food/widgets/PopularFoodsWidget.dart';
import 'package:food/widgets/TopMenus.dart';
import 'package:food/widgets/searchbar.dart';
class Home1Page extends StatefulWidget {
  const Home1Page({Key? key}) : super(key: key);

  @override
  _Home1PageState createState() => _Home1PageState();
}

class _Home1PageState extends State<Home1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {}),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children:<Widget> [
            searchbar(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),

          ],
        ),
      ),
    );
  }
}
