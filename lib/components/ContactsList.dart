import 'package:flutter/material.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/components/ContactRow.dart';

class ContactsList extends StatelessWidget {
  final List<Contact> contacts;

  ContactsList(this.contacts);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            sliver: new SliverList(
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new ContactRow(contacts[index]),
                childCount: contacts.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}