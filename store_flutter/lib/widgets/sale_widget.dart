import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/const.dart';
import '../models/category_model_header.dart';
import '../services/api_handler.dart';

class CategoryItem extends StatefulWidget {
  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  CategoryModelHeader? categoryModelHeader;

  bool isError = false;

  String errorStr = "";

  Future<void> getAllCategory() async {
    try {
      categoryModelHeader =
          (await APIHandler.getAllCategory()) as CategoryModelHeader?;
    } catch (error) {
      isError = true;
      errorStr = error.toString();
      log("error $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Container(
          //     padding: const EdgeInsets.all(5),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10), color: white),
          //     child: Image.asset(
          //       categoryModelHeader!.image.toString(),
          //       height: 20,
          //     )),
          const SizedBox(width: 10),
          // Text(
          //   categoryModelHeader!.name.toString(),
          //   style: poppin.copyWith(),
          // )
        ],
      ),
    );
  }
}
