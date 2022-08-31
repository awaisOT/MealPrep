import 'package:flutter/material.dart';
import 'package:mealprep/screens/drawer.dart';

class FilterScreens extends StatelessWidget {
const FilterScreens({ Key? key }) : super(key: key);

static const routeName='/filter_screen';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Filtered Meal\'s'),),
      drawer: DrawerScreen(),
      body: const Center(
        child: Text(
          'this is the screen to show the filtered data',
        ),
      ),
    );
  }
}