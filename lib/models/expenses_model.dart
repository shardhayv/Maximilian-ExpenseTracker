import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final formatter = DateFormat.yMd();

enum Category { education, travel, food, work }

const categoryIcon = {
  Category.education: Icons.cast_for_education,
  Category.travel: Icons.travel_explore,
  Category.food: Icons.lunch_dining,
  Category.work: Icons.work,
};

class ExpensesModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }

  ExpensesModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
}
