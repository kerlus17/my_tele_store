import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tele_store/core/extentions/context_extension.dart';

class CustomShareButton extends StatelessWidget {
  const CustomShareButton({
    required this.size,
    required this.productId,
    required this.productTitle,
    super.key,
  });

  final double size;
  final String productId;
  final String productTitle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final String shareUrl = 'https://telestore.com/product/$productId';
        
        final String message = 'شاهد منتج "$productTitle" على متجرنا:\n$shareUrl';

        await Share.share(
          message,
          subject: productTitle, 
        );
      },
      padding: EdgeInsets.zero,
      icon: Icon(
        Icons.share,
        color: context.color.textColor,
        size: size,
      ),
    );
  }
}