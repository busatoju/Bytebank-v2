

import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Full Name', ),),
            TextField(decoration: InputDecoration(labelText: 'Account Number'), keyboardType: TextInputType.number,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RaisedButton(
                  child: Text('Create'),
                  onPressed: (){

              }),
            )
          ],
        ),
      ),
    );
  }
}
