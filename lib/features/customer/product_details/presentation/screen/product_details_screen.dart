import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/custome_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/extentions/string_extension.dart';
import 'package:tele_store/features/customer/product_details/presentation/bloc/product_details/product_details_bloc.dart';
import 'package:tele_store/features/customer/product_details/presentation/refactor/add_to_cart_button.dart';
import 'package:tele_store/features/customer/product_details/presentation/refactor/product_custom_painter.dart';
import 'package:tele_store/features/customer/product_details/presentation/refactor/product_datails_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({required this.productId, super.key});

  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductDetailsBloc>()
        ..add(ProductDetailsEvent.fetchDetailsProduct(productId: productId)),
      child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
        builder: (context, state) {
          return state.when(
            loading: () {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            success: (success) {
              return Scaffold(
                appBar: CustomeAppBar(
                  title: success.title!.convertLongString(),
                ),
                bottomNavigationBar: AddToCartButton(
                  price: success.price ?? 0.0,
                ),
                body: Stack(
                  children: [
                    CustomPaint(
                      size: Size(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height,
                      ),
                      painter: DetailsCustomPainter(
                        gradient: LinearGradient(
                          colors: [
                            context.color.bluePinkLight!,
                            context.color.bluePinkDark!,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    ProductDatailsBody(
                    productDetailsmodel: success,
                    ),
                  ],
                ),
              );
            },
            error: (error) {
              return Scaffold(
                body: Center(
                  child: Text(error),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
