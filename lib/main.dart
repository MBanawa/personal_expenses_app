import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text('Personal Expenses'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5.0,
                child: Text('Chart here'),
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
