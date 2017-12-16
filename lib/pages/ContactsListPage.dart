import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:contacts_list/components/NavBar.dart';
import 'package:contacts_list/components/ContactsList.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/settings/AppColors.dart';

class ContactsListPage extends StatefulWidget {
  ContactsListPage({Key key}) : super(key: key);

  @override
  _ContactsListPageState createState() => new _ContactsListPageState();
}

class _ContactsListPageState extends State<ContactsListPage> {
  List<Contact> contactsList = new List<Contact>();

  _getContacts() async {
    String url = 'https://gist.githubusercontent.com/ivillamil/76c07f710e4151e75911a0aab72e1a38/raw/772085e70f361bdd28e2d70fabe2e7f4826e487d/users-db.json';
    var httpClient = createHttpClient();
    var response = await httpClient.get(url);
    var results = JSON.decode(response.body);
    if (results.length > 0) {
      for (var contact in results) {
        contactsList.add(new Contact(
          id: contact["id"],
          avatar: contact["avatar"],
          address: contact["address"],
          description: contact["description"],
          name: contact["name"],
          phone: contact["phone"],
          title: contact["title"]
        ));
      }

      setState(() {
        contactsList = contactsList;
      });
    }
  }

  @override
  void initState() {
    _getContacts();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: AppColors.purpleDark,
      body: new Column(
        children: <Widget>[
          new NavBar("Contacts"),
          new ContactsList(contactsList),
        ],
      ),
    );
  }
}