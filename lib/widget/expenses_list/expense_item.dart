import 'package:expense_tracker/models/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final ExpensesModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 10),
            Row(
              children: [
                // converting double to string and rounding off the value to only 2 after decimal
                Text('Rs ${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[expense.category]),
                    const SizedBox(width: 8),
                    Text(
                      expense.formattedDate,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
