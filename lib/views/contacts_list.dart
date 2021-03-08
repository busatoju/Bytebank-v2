import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),),
      body: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

        }
      ),
    );
  }
}
