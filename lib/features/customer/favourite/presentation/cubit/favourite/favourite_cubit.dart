import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/features/customer/favourite/data/model/add_favourite_model.dart';

part 'favourite_state.dart';
part 'favourite_cubit.freezed.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(FavouriteState.initial());

  Future<void> manageFavourite({
    required String title,
    required String image,
    required String productId,
    required String price,
    required String categoryName,
  }) async {
    emit(
      FavouriteState.initial(),
    );

    final theindexFind = await HiveDatabase().favouriteBox!.values
        .toList()
        .indexWhere((element) => element.id == productId);
    if (theindexFind != -1) {
      await HiveDatabase().favouriteBox!.deleteAt(theindexFind);
    } else {
      await HiveDatabase().favouriteBox!.add(
        AddFavouriteModel(
          title: title,
          image: image,
          id: productId,
          price: price,
          categoryName: categoryName,
        ),
      );
    }

    emit(
      FavouriteState.addAndRemove(),
    );
  }

  bool isFavourite(String productId) {
    return HiveDatabase().favouriteBox!.values.toList().any(
      (element) => element.id == productId,
    );
  }

  List<AddFavouriteModel> get getAllFavourites {
    return HiveDatabase().favouriteBox!.values.toList();
  }
}
