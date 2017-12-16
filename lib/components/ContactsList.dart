import 'package:flutter/material.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/components/ContactRow.dart';
import 'package:contacts_list/settings/AppColors.dart';

class ContactsList extends StatelessWidget {
  final List<Contact> contacts;
  final dynamic onItemPressed;

  ContactsList(this.contacts, this.onItemPressed);

  Widget _renderRow(context, index) {
    final Contact contact = contacts[index];
    return new InkWell(
      onTap: () => onItemPressed(contact),
      highlightColor: AppColors.purple,
      splashColor: AppColors.purpleDarker,
      child: new ContactRow(contact),
    );
  }

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
                _renderRow,
                childCount: contacts.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}