
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class CategoryController extends GetxController {
  final categories = <Category>[
    Category(name: "World", icon: Icons.public),
    Category(name: "Technology", icon: Icons.computer),
    Category(name: "Business", icon: Icons.business),
    Category(name: "Sports", icon: Icons.sports),
    Category(name: "Health", icon: Icons.health_and_safety),
    Category(name: "Entertainment", icon: Icons.movie),
    Category(name: "Science", icon: Icons.science),
  ].obs;
}