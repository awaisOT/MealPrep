import 'package:mealprep/dummy_data.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/MealDetailScreen';

  @override
  Widget build(BuildContext context) {
    String mealID = ModalRoute.of(context)?.settings.arguments as String;
    final mealDetails =
        DUMMY_MEALS.firstWhere((element) => element.id == mealID);

    return Scaffold(
        appBar: AppBar(
          title: Text(mealDetails.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(
                mealDetails.imageUrl,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Ingredients',
                  style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                
                height: 150,
                width: 200,
                child: ListView.builder(
                    itemBuilder: ((context, index) => Column(
                          children: [
                            Text(
                              mealDetails.ingredients[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const Divider(),
                          ],
                        )),
                    itemCount: mealDetails.ingredients.length),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Steps',
                  style: TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: ListView.builder(
                    itemBuilder: ((context, index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  child: Text('${index + 1 }')),
                              title: Text(mealDetails.steps[index]),
                            ),
                          ],
                        )),
                    itemCount: mealDetails.steps.length),
              ),
            ],
          ),
        ));
  }
}
