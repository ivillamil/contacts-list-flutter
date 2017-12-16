import 'package:flutter/material.dart';
import 'package:contacts_list/settings/AppColors.dart';

class UserAvatarWidget extends StatelessWidget {
  final String imageUrl;
  double borderWidth = 2.0;
  double size = 80.0;

  UserAvatarWidget(String imageUrl, { double size, double borderWidth }) : this.imageUrl = imageUrl {
    if (size != null) this.size = size;
    if (borderWidth != null) this.borderWidth = borderWidth;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new CircleAvatar(
        backgroundColor: AppColors.purpleDark,
        backgroundImage: new NetworkImage(imageUrl),
      ),
      decoration: new BoxDecoration(
          border: new Border.all(
              color: AppColors.purpleLight,
              width: borderWidth
          ),
          color: AppColors.purpleDarker,
          shape: BoxShape.circle
      ),
      height: size,
      width: size,
    );
  }
}