import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  void sumbitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            onSubmitted: (_) => sumbitData(),
            controller: titleController,
            // onChanged: (value) {
            //   titleInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onSubmitted: (_) => sumbitData(),
            controller: amountController,
            // onChanged: (value) {
            //   amountInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
          ),
          FlatButton(
            onPressed: sumbitData,
            child: Text(
              'Add Transaction',
              style: TextStyle(color: Colors.purple),
            ),
          )
        ]),
      ),
    );
  }
}
