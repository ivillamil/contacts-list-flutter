import 'package:flutter/material.dart';
import 'package:contacts_list/components/NavBar.dart';
import 'package:contacts_list/components/ContactsList.dart';
import 'package:contacts_list/models/Contact.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: const Color(0xFF272132),
      body: new Column(
        children: <Widget>[
          new NavBar("Contacts"),
          new ContactsList(contacts),
        ],
      ),
    );
  }
}