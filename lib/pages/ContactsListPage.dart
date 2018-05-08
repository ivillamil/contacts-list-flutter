import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:contacts_list/components/NavBar.dart';
import 'package:contacts_list/components/ContactsList.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/pages/ContactDetailsPage.dart';
import 'package:contacts_list/settings/AppColors.dart';

class ContactsListPage extends StatefulWidget {
  ContactsListPage({Key key}) : super(key: key);

  @override
  _ContactsListPageState createState() => _ContactsListPageState();
}

class _ContactsListPageState extends State<ContactsListPage> {
  List<Contact> contactsList = List<Contact>();

  _getContacts() async {
    String url = 'https://gist.githubusercontent.com/ivillamil/76c07f710e4151e75911a0aab72e1a38/raw/772085e70f361bdd28e2d70fabe2e7f4826e487d/users-db.json';
    var httpClient = http.Client();
    var response = await httpClient.get(url);
    var results = JSON.decode(response.body);
    if (results.length > 0) {
      for (var contact in results) {
        contactsList.add(Contact.fromJSON(contact));
      }

      setState(() {
        contactsList = contactsList;
      });
    }
  }

  _handleItemPressed(Contact contact) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => new ContactDetailsPage(contact)
    ));
  }

  @override
  void initState() {
    super.initState();
    _getContacts();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.purpleDark,
      body: Column(
        children: <Widget>[
          NavBar("Contacts"),
          ContactsList(contactsList, _handleItemPressed),
        ],
      ),
    );
  }

  createHttpClient() {

  }
}