import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function submitHandler;
  NewTransaction(this.submitHandler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    print(titleController.text);
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    widget.submitHandler(
      enteredTitle,
      enteredAmount,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            onSubmitted: (_) => submitData(),
            // onChanged: (val) {
            //   titleInput = val;
            // },
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            onSubmitted: (_) => submitData(),
            //   onChanged: (val) => amountInput = val,
            controller: amountController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
          FlatButton(
            child: Text('Add Transaction'),
            textColor: Colors.purple,
            onPressed: submitData,
          )
        ]),
      ),
    );
  }
}
