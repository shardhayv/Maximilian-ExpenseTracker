import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';
// import 'package:expense_tracker/models/expenses.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  List<ExpensesModel> expenses = [
    ExpensesModel(
      title: 'Flutter Course',
      amount: 50.0,
      date: DateTime(2024, 10, 15),
      category: Category.education,
    ),
    ExpensesModel(
      title: 'Airplane Ticket',
      amount: 500.0,
      date: DateTime(2024, 10, 20),
      category: Category.travel,
    ),
    ExpensesModel(
      title: 'Groceries',
      amount: 100.0,
      date: DateTime.now(),
      category: Category.food,
    ),
    ExpensesModel(
      title: 'Office Supplies',
      amount: 30.0,
      date: DateTime(2024, 10, 25),
      category: Category.work,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Body"),
          Text("List of Expenses"),
        ],
      ),
    );
  }
}
