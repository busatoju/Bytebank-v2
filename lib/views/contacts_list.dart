import 'package:bytebank_version_two/views/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text('Juliana', style: TextStyle(fontSize: 24.0),),
                subtitle: Text('27665843', style: TextStyle(fontSize: 16.0),),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactForm())).then((value) => debugPrint(value.toString()));
        }
      ),
    );
  }
}
