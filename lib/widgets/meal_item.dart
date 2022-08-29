import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String image;
  final String id;
  const MealItem({
    required this.title,
    required this.image,
    required this.id,
  });

  void mealInfo() {
// empty right now, doing nothing, it will be used for onTap functionality on inkwell
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: mealInfo,
      borderRadius: BorderRadius.circular(30),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Image.network(
                  image,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Colors.black54,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
