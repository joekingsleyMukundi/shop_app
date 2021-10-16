import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static final routeName = '/mealDetail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mealDetail'),
      ),
      body: Center(
        child: Text('detail'),
      ),
    );
  }
}
