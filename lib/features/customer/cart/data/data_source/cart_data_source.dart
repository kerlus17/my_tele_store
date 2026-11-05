import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/core/utils/app_values.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';

class CartDataSource {
  new(Object object);

  Future<void> addProductToCart({
    required ProductGetAllModel product,
    required String userId,
  }) async {
    final cartId = AppValues.randomStringId;
    const created_at = '';

    final jsonMap = product.toJson();

    jsonMap['created_at'] = created_at.convertDataFormate();

    await FirebaseFirestore.instance
        .collection(usersCollection)
        .doc(userId)
        .collection(cartCollection)
        .doc(cartId)
        .set(jsonMap);
  }
}
