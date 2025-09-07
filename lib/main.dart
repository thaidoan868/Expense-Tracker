import 'package:expense_tracker/data/database.dart';
import 'package:expense_tracker/expense_tracker.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/models/expense_category.dart';
import 'package:expense_tracker/models/expenses.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(ExpenseAdapter());
  Hive.registerAdapter(ExpensesAdapter());
  Hive.registerAdapter(ExpenseCategoryAdapter());

  runApp(
    ChangeNotifierProvider.value(
      value: await getDatabaseInstance(),
      child: ExpenseTracker(),
    ),
  );
}
