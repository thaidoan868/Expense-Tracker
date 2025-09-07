import 'package:expense_tracker/models/expense.dart';
import 'package:hive/hive.dart';
part 'expenses.g.dart';

@HiveType(typeId: 2)
class Expenses {
  @HiveField(0)
  List<Expense> expenses = [];

  int get length => expenses.length;
}
