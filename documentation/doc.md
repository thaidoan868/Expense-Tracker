# Documentation

## Models

- enum ExpenseCategory {Household, Education, Entertainment, Allowance}
- Expense:
  - String id;
  - String title
  - int amount
  - ExpenseCategory category;
  - DateTime timestamp;
  - String note;
- Expenses
  - List<Expense> expenses;
