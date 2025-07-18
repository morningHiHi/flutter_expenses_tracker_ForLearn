import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

enum Category { food, travel, leisure, work }

const Map<Category,Object> categoryIcons = {
  Category.food : Icons.lunch_dining,
  Category.travel : Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work : Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
