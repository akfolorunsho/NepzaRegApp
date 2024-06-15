import 'package:flutter/material.dart';

import '../../../core/resources/director_widget.dart';

class DynamicFormScreen extends StatefulWidget {
  @override
  _DynamicFormScreenState createState() => _DynamicFormScreenState();
}

class _DynamicFormScreenState extends State<DynamicFormScreen> {
  final List<Widget> _forms = [];

  void _addForm() {
    setState(() {
      _forms.add(DirectorWidget());
    });
  }

  void _saveForms() async {
    List<Map<String, dynamic>> formData = [];

    for (var form in _forms) {
      // Collect data from each form instance (This will require modification based on how you collect data from each form)
      // For now, let's assume we have a method to collect data from each form
      // formData.add(collectDataFromForm(form));
    }

    // Save formData to Firebase (assuming Firestore instance is already initialized)

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Forms saved!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Form Builder'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ..._forms,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _addForm,
                  child: Text('Add Form'),
                ),
                ElevatedButton(
                  onPressed: _saveForms,
                  child: Text('Save Forms'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
