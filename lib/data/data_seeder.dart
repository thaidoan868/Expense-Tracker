import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/models/expense_category.dart';
import 'package:expense_tracker/models/expenses.dart';

Expenses seedExpenses() {
  return Expenses()
    ..expenses = [
      Expense(
        title: "Groceries",
        amount: 120.50,
        category: ExpenseCategory.household,
      ),
      Expense(
        title: "Math Tuition",
        amount: 300.0,
        category: ExpenseCategory.education,
      ),
      Expense(
        title: "Movie Night",
        amount: 15.75,
        category: ExpenseCategory.entertainment,
      ),
      Expense(
        title: "Pocket Money",
        amount: 50.0,
        category: ExpenseCategory.allowance,
      ),
      Expense(
        title: "New Headphones",
        amount: 80.0,
        category: ExpenseCategory.entertainment,
      ),
    ];
}
