import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/my_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/burger_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    // Burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    // Smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    // Pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    // Pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, color: Colors.grey[800]),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "I want to",
                    style: TextStyle(fontSize: 32.0),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              TabBar(tabs: myTabs),
              // Tab bar view
              Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(),
                    BurgerTab(),
                    SmoothieTab(),
                    PanCakeTab(),
                    PizzaTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
