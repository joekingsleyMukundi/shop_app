import 'package:flutter/material.dart';

class Category {
  @required
  final id;
  @required
  final title;
  final Color color;
  const Category({this.id, this.title, this.color = Colors.deepOrange});
}
