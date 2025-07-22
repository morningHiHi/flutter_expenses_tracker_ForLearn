import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  NewExpense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Titile')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            maxLength: 50,
            decoration: InputDecoration(
              prefix: Text('\$ '),
              label: Text('amount'),
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('cancel')),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
