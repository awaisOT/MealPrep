import 'package:flutter/material.dart';
import 'package:mealprep/screens/drawer.dart';

class FilterScreens extends StatefulWidget {
  const FilterScreens({Key? key}) : super(key: key);

  static const routeName = '/filter_screen';

  @override
  State<FilterScreens> createState() => _FilterScreensState();
}

class _FilterScreensState extends State<FilterScreens> {
  var isGlutenFree = false;
  var isLactoseFree = false;
  var isVegan = false;
  var isVegetarian = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filter'),
        ),
        drawer: DrawerScreen(),
        body: Column(
          children: <Widget>[
            Container(
              height: 150,
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.teal,
              child: const Text(
                'Filter Your Meal\'s',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SwitchListTile(
                    activeColor: Colors.teal,
                    value: isGlutenFree,
                    title: const Text(
                      'Gluttose FREE Meal\'s',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal,
                      ),
                    ),
                    onChanged: (value) {
                      (setState(() {
                        {
                          isGlutenFree = value;
                        }
                      }));
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.teal,
                    value: isLactoseFree,
                    title: const Text(
                      'Lectose FREE Meal\'s',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal,
                      ),
                    ),
                    onChanged: (newvalue) {
                      (setState(() {
                        {
                          isLactoseFree = newvalue;
                        }
                      }));
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.teal,
                    value: isVegan,
                    title: const Text(
                      'Vegan Meal\'s',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal,
                      ),
                    ),
                    onChanged: (newvalue) {
                      (setState(() {
                        {
                          isVegan = newvalue;
                        }
                      }));
                    },
                  ),
                  SwitchListTile(
                    activeColor: Colors.teal,
                    value: isVegetarian,
                    title: const Text(
                      'Vegetarian Meal\'s',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal,
                      ),
                    ),
                    onChanged: (newvalue) {
                      (setState(() {
                        {
                          isVegetarian = newvalue;
                        }
                      }));
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
