import 'package:expense_tracker/models/expenses.dart';
import 'package:expense_tracker/widgets/expense_widget.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final Expenses expenses;
  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, i) => ExpenseWidget(expense: expenses.expenses[i]),
    );
  }
}
