import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseWidget extends StatelessWidget {
  final Expense expense;
  const ExpenseWidget({ super.key, required this.expense });

  @override
  Widget build(BuildContext context){
    return Text(expense.title);
  }
}