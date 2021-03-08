import 'package:bytebank_version_two/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController controllerName = TextEditingController();

  TextEditingController controllerAccountNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
                controller: controllerName,
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Account Number'),
                keyboardType: TextInputType.number,
                controller: controllerAccountNumber,
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(child: Text('Create'), onPressed: () {
                Contact newContact =  Contact(controllerName.text, int.tryParse(controllerAccountNumber.text));
                Navigator.pop(context, newContact);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
