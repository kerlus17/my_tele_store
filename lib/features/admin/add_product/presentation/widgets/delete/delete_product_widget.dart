import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/delete_product/delete_product_bloc.dart';
import 'package:tele_store/features/admin/add_product/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';

class DeleteProductWidget extends StatelessWidget {
  const DeleteProductWidget({
    required this.productId,
    super.key,
  });

  final String productId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: BlocConsumer<DeleteProductBloc, DeleteProductState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              context.read<GetAllAdminProductsBloc>().add(
                  GetAllAdminProductsEvent.fetchAllAdminProducts(
                      isloading: false));

              ShowToast.showToastSuccessTop(
                context: context,
                message: 'Your product has been deleted',
              );
            },
            error: (error) {
              ShowToast.showToastErrorTop(
                context: context,
                message: error,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: (id) {
              if (id == productId) {
                return SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              }
              return const Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              ); // Icon
            },
            orElse: () {
              return InkWell(
                onTap: () {
                  context.read<DeleteProductBloc>().add(
                        DeleteProductEvent.deleteproduct(id: productId),
                      );
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ), // Icon
              ); // InkWell
            },
          );
        },
      ), // BlocConsumer
    ); // Padding
  }
}
