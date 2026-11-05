import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/core/utils/app_strings.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';

class CartController {
  CartController();

  final CartDataBase = FirebaseFirestore.instance
      .collection(cartCollection)
      .doc(SharedPref().getInt(prefKeys.userId).toString())
      .collection(cartCollection)
      .orderBy('created_at', descending: true);

  Stream<List<ProductGetAllModel>> getProductsFromCart() {
    return CartDataBase.snapshots().map((value) {
      return value.docs.map((doc) {
        final data = doc.data();
        return ProductGetAllModel.fromJson(data);
      }).toList();
    });
  }
}
