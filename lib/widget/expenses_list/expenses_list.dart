import 'package:expense_tracker/models/expenses_model.dart';
import 'package:expense_tracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<ExpensesModel> expenses;
  final void Function(ExpensesModel expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        direction: DismissDirection.endToStart, // Swipe from right to left
        onDismissed: (direction) => onRemoveExpense(expenses[index]),
        key: ValueKey(expenses[index]),
        child: ExpenseItem(
          expense: expenses[index],
        ),
      ),
    );
  }
}
