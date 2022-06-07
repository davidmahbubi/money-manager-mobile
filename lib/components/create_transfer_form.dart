import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateTransferForm extends StatefulWidget {
  const CreateTransferForm({super.key});

  @override
  State<CreateTransferForm> createState() => _CreateTransferFormState();
}

class _CreateTransferFormState extends State<CreateTransferForm> {
  final List<Map> accounts = [
    {'value': 'cash', 'label': 'Cash'},
    {'value': 'rekening_bca', 'label': 'Rekening BCA'},
    {'value': 'rekening_bri', 'label': 'Rekening BRI'},
    {'value': 'debit_bni', 'label': 'Debit BNI'},
  ];

  final TextEditingController _date = TextEditingController();
  final TextEditingController _time = TextEditingController();
  String? _selectedAccount;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(right: 5),
                    child: TextField(
                      controller: _date,
                      decoration: const InputDecoration(label: Text('Date')),
                      onTap: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextField(
                      controller: _time,
                      decoration: const InputDecoration(label: Text('Time')),
                      onTap: () {
                        _selectTime(context);
                      },
                    ),
                  ),
                )
              ],
            ),
            DropdownButtonFormField(
              decoration: const InputDecoration(label: Text('From Account')),
              items: accounts.map((Map account) {
                return DropdownMenuItem(
                  value: account['value'],
                  child: Text(account['label']),
                );
              }).toList(),
              onChanged: _onSelectorChanged,
            ),
            DropdownButtonFormField(
              decoration: const InputDecoration(label: Text('To Account')),
              items: accounts.map((Map account) {
                return DropdownMenuItem(
                  value: account['value'],
                  child: Text(account['label']),
                );
              }).toList(),
              onChanged: _onSelectorChanged,
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('Amount'),
              ),
            ),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(label: Text('Description')),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );
    setState(() {
      _date.text =
          pickedDate == null ? '' : DateFormat('dd-MM-yyyy').format(pickedDate);
    });
  }

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      _time.text = pickedTime == null ? '' : pickedTime.format(context);
    });
  }

  void _onSelectorChanged(dynamic value) {
    setState(() {
      _selectedAccount = value;
    });
  }
}
