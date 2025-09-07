import 'package:hive_flutter/adapters.dart';
part 'expense_category.g.dart';

@HiveType(typeId: 0)
enum ExpenseCategory {
  @HiveField(0)
  household,
  @HiveField(1)
  education,
  @HiveField(2)
  entertainment,
  @HiveField(3)
  allowance,
}
