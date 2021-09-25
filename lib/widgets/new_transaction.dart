import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            // onChanged: (value) {
            //   titleInput = value;
            // },
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            // onChanged: (value) {
            //   amountInput = value;
            // },
            controller: amountController,
          ),
          FlatButton(
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          )
        ],
      ),
    ));
  }
}
