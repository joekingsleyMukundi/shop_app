import 'package:flutter/material.dart';
import 'package:shop_app/widgets/category_item.dart';
import 'package:shop_app/dummy_data.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(5),
        children: [
          ...(DUMMY_CATEGORIES as List).map((foodData) {
            return CategoryItem(foodData.id, foodData.title, foodData.color);
          })
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ));
  }
}
