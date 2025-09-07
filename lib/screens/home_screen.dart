import 'package:expense_tracker/data/database.dart';
import 'package:expense_tracker/models/expenses.dart';
import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Expenses expenses = context.select<Database, Expenses>((db) => db.expenses);

    return Scaffold(
      body: Column(
        children: [ 
          Text("The chart"),
          Expanded(child: ExpensesList(expenses: expenses)),
        ],
      ),
    );
  }
}
