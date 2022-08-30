import 'package:flutter/material.dart';
import 'package:mealprep/screens/category_screen.dart';
import 'package:mealprep/screens/favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentindex=0;

List <Widget> pages=[
  CategoryScreen(),
  FavouritesScreen()
];
  void selectedPage(int index){
    setState(() {
      currentindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Prep'),
      ),
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorities')
        ],
        onTap: selectedPage,
        currentIndex: currentindex,
      ),
    );
  }
}
