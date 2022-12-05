import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: amountController,
            decoration: InputDecoration(labelText: 'Amount'),
          ),
          Container(
              child: TextButton(
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
            child: Text('add'),
          ))
        ]),
      ),
    );
  }
}