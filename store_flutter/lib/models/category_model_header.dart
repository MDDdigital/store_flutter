import 'package:flutter/cupertino.dart';

class CategoryModelHeader with ChangeNotifier {
  String? image, name;
  int? id;

  CategoryModelHeader({id, required this.image, required this.name});

  CategoryModelHeader.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['text'];
    image = json['image'];
  }

  static List<CategoryModelHeader> categoryFromSnapshot(List categorySnaphot) {
    return categorySnaphot.map((data) {
      return CategoryModelHeader.fromJson(data);
    }).toList();
  }
}
