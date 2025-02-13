import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  List<CategoryModel> getList(){
    List<CategoryModel> categories = [];
    categories.add(
      CategoryModel(name: '1', iconPath: '1', boxColor: Color(0xff92A3FD))
    );

    return categories;
  }
}
