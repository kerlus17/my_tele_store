import 'package:flutter/material.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/utils/image_pick.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: InkWell(
        onTap: () {
          PickImageUtils().pickImage();
        },
        child: const CircleAvatar(
          radius: 38,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1682686580036-b5e25932ce9a?q=80&w=1550&auto=format&fit=crop&ixlib=rb-',
          ),
        ),
      ), // CircleAvatar
    ); // CustomFadeInDown
  }
}
