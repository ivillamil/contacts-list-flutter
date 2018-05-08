import 'package:flutter/material.dart';
import 'package:contacts_list/components/NavBar.dart';
import 'package:contacts_list/components/UserAvatarWidget.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/settings/AppColors.dart';
import 'package:contacts_list/settings/AppFontStyles.dart';

class ContactDetailsPage extends StatelessWidget {
  final Contact contact;

  ContactDetailsPage(this.contact);

  @override
  Widget build(BuildContext context) {
    void _goBack() {
      Navigator.pop(context);
    }

    var space = (size) => new SizedBox(height: size);
    var contactDataRow = (String label, String value) => new Container(
      child: Column(
        children: <Widget>[
          new Text(label, style: AppFontStyles.label),
          new Text(value, style: AppFontStyles.subtitle),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
    );
    var centeredText = (String text, TextStyle style) => Center(child: Text(text, style: style));
    var userImage = new Center(child: UserAvatarWidget(contact.avatar, size: 120.0, borderWidth: 4.0));
    var commentView = Container(
      child: new Text(
          contact.description,
          style: AppFontStyles.description
      ),
      decoration: const BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
    );

    return Scaffold(
      backgroundColor: AppColors.purpleDark,
      body: Column(
        children: <Widget>[
          NavBar("Details", onBack: _goBack),
          Expanded(
            child: ListView(
              children: <Widget>[
                userImage,
                space(20.0),
                centeredText(contact.name, AppFontStyles.largeTitle),
                centeredText(contact.title, AppFontStyles.largeSubtitle),
                space(20.0),
                commentView,
                space(20.0),
                contactDataRow("Phone:", contact.phone),
                space(10.0),
                contactDataRow("Email:", contact.email),
                space(10.0),
                contactDataRow("Address:", contact.address),
                space(20.0),
              ],
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    );
  }
}