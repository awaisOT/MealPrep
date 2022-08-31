import 'package:flutter/material.dart';
import 'package:mealprep/screens/filter_screens.dart';
import './category_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  void categoryScreen(){
    return categoryScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 205, 253, 240),
      child: Column(
        children: [
          Container(
            height: 150,
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color: Colors.teal,
            child: const Text(
              'Meal Prep! Menu',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              color: Colors.teal,
            ),
            title: Text(
              'Categories',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.teal.shade400,
              ),
            ),
            onTap:(){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.filter,
              color: Colors.teal,
            ),
            title: Text(
              'Filter',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.teal.shade400,
              ),
            ),
            onTap:(){
              Navigator.of(context).pushReplacementNamed(FilterScreens.routeName);
            },
          ),
        ],
      ),
    );
  }
}
