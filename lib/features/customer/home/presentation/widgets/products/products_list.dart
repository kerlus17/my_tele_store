import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/features/admin/add_product/data/models/get_all_product_response.dart';
import 'package:tele_store/features/customer/home/presentation/widgets/products/product_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({required this.products, super.key});

  final List<ProductGetAllModel> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 15,
          childAspectRatio: 165 / 250,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            imgUrl: products[index].images!.first,
            title: products[index].title ?? '',
            price: products[index].price ?? 0,
            categoryName: products[index].category!.name ?? '',
          );
        },
      ),
    );
  }
}
