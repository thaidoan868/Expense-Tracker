import 'package:expense_tracker/data/data_seeder.dart';
import 'package:expense_tracker/models/expenses.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class Database extends ChangeNotifier {
  late final Box _box;
  final _boxName = 'expenseTrackerBox';

  Expenses _expenses = Expenses();
  final _expensesKey = 'expenses';

  Database();

  Future<void> init() async {
    _box = await Hive.openBox(_boxName);

    // set default values for expenses
    if (!_box.containsKey(_expensesKey)) {
      _expenses = seedExpenses();
      await _box.put(_expensesKey, _expenses);
    } else {
      _expenses = _box.get(_expensesKey);
    }
  }

  Future<void> save() async {
    await _box.put(_expensesKey, _expenses);
    notifyListeners();
  }

  Expenses get expenses => _expenses;
  Future<Expenses> setExpenses(Expenses expenses) async {
    await _box.put(_expensesKey, expenses);
    _expenses = expenses;
    notifyListeners();
    return _expenses;
  }
}

Future<Database> getDatabaseInstance() async {
  Database db = Database();
  await db.init();
  return db;
}
