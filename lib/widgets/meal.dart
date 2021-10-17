import 'package:flutter/material.dart';
import 'package:shop_app/models/meals.dart';
import 'package:shop_app/screens/meal_detail_screen.dart';

class Meal extends StatelessWidget {
  final id;
  final imageUrl;
  final title;
  final duration;
  final affordability;
  final complexity;

  Meal(this.id, this.imageUrl, this.title, this.duration, this.affordability,
      this.complexity);

  String get complextyText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Challenging:
        return 'Difficult';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
        return 'unknown';
    }
  }

  void selectMeal(context) {
    Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          selectMeal(context);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      color: Colors.black54,
                      padding: EdgeInsets.all(10),
                      width: 300,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(width: 10),
                        Text('$duration min')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.business_center_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(complextyText)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text(affordabilityText)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
