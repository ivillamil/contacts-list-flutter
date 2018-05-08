import 'package:flutter/material.dart';
import 'package:contacts_list/pages/ContactsListPage.dart';

void main() => runApp(new ContactsApp());

class ContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      home: ContactsListPage(),
    );
  }
}
