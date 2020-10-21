import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            controller: titleController,
            // onChanged: (value) {
            //   titleInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: amountController,
            // onChanged: (value) {
            //   amountInput = value;
            // },
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
          ),
          FlatButton(
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            },
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
