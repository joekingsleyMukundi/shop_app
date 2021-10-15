import 'package:flutter/material.dart';
import 'package:shop_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final color;
  CategoryItem(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    void changeScreen(context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return CategoryMealsScreen(title);
          },
        ),
      );
    }

    return InkWell(
      onTap: () {
        changeScreen(context);
      },
      splashColor: Colors.pink,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          this.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
