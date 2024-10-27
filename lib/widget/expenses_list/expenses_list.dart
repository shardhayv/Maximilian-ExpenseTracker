import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<ExpensesModel> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(
        expense: expenses[index],
      ),
    );
  }
}
