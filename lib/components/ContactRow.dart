import 'package:flutter/material.dart';
import 'package:contacts_list/models/Contact.dart';
import 'package:contacts_list/settings/AppColors.dart';

class ContactRow extends StatelessWidget {
  final Contact contact;
  final double rowHeight = 120.0;

  ContactRow(this.contact);

  Widget _getBody(final String title, final String subtitle) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Text(
            title,
            style: const TextStyle(
                color: AppColors.text,
                fontSize: 20.0
            ),
          ),
          new Container(
            decoration: new BoxDecoration(
                borderRadius: const BorderRadius.all(const Radius.circular(1.0)),
                color: AppColors.purpleLighter
            ),
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            height: 2.0,
            width: 20.0,
          ),
          new Text(
            subtitle,
            style: const TextStyle(color: AppColors.textLight, fontSize: 14.0),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      decoration: new BoxDecoration(
          color: AppColors.purple,
          borderRadius: const BorderRadius.all(const Radius.circular(20.0))
      ),
      padding: const EdgeInsets.only(left: 70.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        children: <Widget>[
          new Positioned(
            child: _getBody(contact.name, contact.name),
            bottom: 10.0,
            left: 50.0,
            right: 20.0,
            top: 10.0,
          ),
          new Positioned(
            child: new UserAvatarWidget(),
            left: 20.0,
            top: 20.0,
          ),
        ],
      ),
      height: rowHeight,
    );
  }
}

class UserAvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: null,
      decoration: new BoxDecoration(
          border: new Border.all(
              color: AppColors.purpleLight,
              width: 2.0
          ),
          color: AppColors.purpleDarker,
          shape: BoxShape.circle
      ),
      height: 80.0,
      width: 80.0,
    );
  }
}