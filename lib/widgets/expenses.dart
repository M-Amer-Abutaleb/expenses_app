import 'package:expenses_app/models/expense.dart';
import 'package:expenses_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "Cinema",
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses Tracker"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
