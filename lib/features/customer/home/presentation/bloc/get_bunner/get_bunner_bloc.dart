import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/graphql/api_result.dart';
import 'package:tele_store/features/customer/home/data/repo/home_repo.dart';

part 'get_bunner_event.dart';
part 'get_bunner_state.dart';
part 'get_bunner_bloc.freezed.dart';

class GetBunnerBloc extends Bloc<GetBunnerEvent, GetBunnerState> {
  GetBunnerBloc(this._repo) : super(const GetBunnerState.loading()) {
    on<GetBunnerEvent>(getBunner);
  }

  FutureOr<void> getBunner(
    GetBunnerEvent event,
    Emitter<GetBunnerState> emit,
  ) async {
    emit(const GetBunnerState.loading());

    final result = await _repo.getBanners();

    result.when(
      success: (data) {
        if (data.bannerImageList.isEmpty) {
          emit(const GetBunnerState.empty());
        } else {
          emit(GetBunnerState.success(imageBannerList: data.bannerImageList));
        }
      },
      failure: (error) {
        emit(GetBunnerState.error(error: error));
      },
    );
  }

  final HomeRepo _repo;
}
