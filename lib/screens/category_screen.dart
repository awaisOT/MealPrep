import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
      
     GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate:
              const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          children: DUMMY_CATEGORIES.map((e) => CatItme(e.title, e.color, e.id)).toList(),);
  }
}
