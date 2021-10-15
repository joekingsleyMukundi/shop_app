import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final title;
  CategoryMealsScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("food"),
      ),
    );
  }
}
