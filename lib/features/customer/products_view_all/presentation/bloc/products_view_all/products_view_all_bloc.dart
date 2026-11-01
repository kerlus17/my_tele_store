import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/customer/products_view_all/data/repo/products_view_all.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_event.dart';
import 'package:tele_store/features/customer/products_view_all/presentation/bloc/products_view_all/products_view_all_state.dart';

class ProductsViewAllBloc
    extends Bloc<ProductsViewAllEvent, ProductsViewAllState> {
  ProductsViewAllBloc(this._repo)
    : super(
        const ProductsViewAllInitialState(hasMoreData: true, productsList: []),
      ) {
    on<GetProductsViewAllEvent>(_getProductsViewAll);
    on<LoadMoreProductsEvent>(_loadMoreProducts, transformer: droppable());
  }

  final ProductsViewAllRepo _repo;

  int offset = 6;

  FutureOr<void> _getProductsViewAll(
    GetProductsViewAllEvent event,
    Emitter<ProductsViewAllState> emit,
  ) async {
    emit(
      const ProductsViewAllLoadingState(productsList: [], hasMoreData: true),
    );

    final result = await _repo.getProductsViewAll(offset: 0);

    result.when(
      success: (data) {
        emit(
          ProductsViewAllSuccessState(
            productsList: data.productGetAllList,
            hasMoreData: true,
          ),
        );
      },
      failure: (error) {
        emit(
          ProductsViewAllErrorState(
            error: error,
            hasMoreData: true,
            productsList: state.productsList,
          ),
        );
      },
    );
  }

  FutureOr<void> _loadMoreProducts(
    LoadMoreProductsEvent event,
    Emitter<ProductsViewAllState> emit,
  ) async {
    if (!state.hasMoreData) return;

    offset += 6;

    emit(
      ProductsViewAllLoadingState(
        productsList: state.productsList,
        hasMoreData: state.hasMoreData,
      ),
    );

    final result = await _repo.getProductsViewAll(offset: offset);

    result.when(
      success: (data) {
        final newList = [...state.productsList, ...data.productGetAllList];
        emit(
          ProductsViewAllSuccessState(
            productsList: newList,
            hasMoreData: !(data.productGetAllList.length < 6),
          ),
        );
      },
      failure: (error) {
        emit(
          ProductsViewAllErrorState(
            error: error,
            hasMoreData: state.hasMoreData,
            productsList: state.productsList,
          ),
        );
      },
    );
  }

  void handlerPagenation({
    required ScrollController scrollController,
    required double loadingMorePosition,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final offset = scrollController.offset;
      final maxLength = scrollController.position.maxScrollExtent;

      if (offset >= maxLength - loadingMorePosition) {
        add(LoadMoreProductsEvent());
      }
    });
  }
}
