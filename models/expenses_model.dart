import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ExpensesModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  ExpensesModel({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
}
