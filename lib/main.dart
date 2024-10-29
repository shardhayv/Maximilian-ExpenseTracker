import 'package:expense_tracker/widget/expenses.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    ),
  );
}
