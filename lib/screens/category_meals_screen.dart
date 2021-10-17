import 'package:flutter/material.dart';
import 'package:shop_app/widgets/meal.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final routeName = '/categoryMealsScreen';
  // final title;
  // CategoryMealsScreen(this.title);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;
    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];
    final meals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(catId);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Meal(
              meals[index].id,
              meals[index].imageUrl,
              meals[index].title,
              meals[index].duration,
              meals[index].affordability,
              meals[index].complexity);
        },
        itemCount: meals.length,
      ),
    );
  }
}
