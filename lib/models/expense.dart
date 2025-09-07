import 'package:expense_tracker/models/expense_category.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'expense.g.dart';



const Uuid uuid = Uuid();

@HiveType(typeId: 1)
class Expense {
  @HiveField(0)
  String id;
  @HiveField(1)
  String title;
  @HiveField(2)
  double amount;
  @HiveField(3)
  ExpenseCategory category;
  @HiveField(4)
  DateTime date;
  @HiveField(5)
  String? description;

  Expense({required this.title, required this.amount, required this.category})
    : id = uuid.v4(),
      date = DateTime.now();
}
