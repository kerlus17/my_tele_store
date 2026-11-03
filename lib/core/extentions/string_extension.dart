import 'package:intl/intl.dart';

extension StringFormate on String {
  // String imageProductFormate() {
  //   if (this.contains('placeimg.com') || this.contains('placehold.co')) {
  //     return 'https://picsum.photos/600/400';
  //   }
  //   return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');
  // }
  String imageProductFormate() {
    // تنظيف الـ String من أي أقواس أو علامات تنصيص
    String cleanedUrl = trim().replaceAll(RegExp(r'^[\["]+|[\]"]+$'), '');

    // معالجة الروابط المعطلة أو القديمة
    if (cleanedUrl.isEmpty ||
        cleanedUrl.contains('placeimg.com') ||
        cleanedUrl.contains('placehold.co')) {
      return 'https://picsum.photos/600/400';
    }

    // التأكد من أن الرابط يبدأ بـ http
    if (!cleanedUrl.startsWith('http')) {
      return 'https://picsum.photos/600/400';
    }

    return cleanedUrl;
  }

  String toCapitalized() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String convertLongString() {
    final shortString = split(' ').sublist(0, split(' ').length - 2).join(' ');
    return shortString;
  }

  String convertDataFormate() {
    final now = DateTime.now();

    return DateFormat('d MMM y - h:mm a').format(now);
  }
}
