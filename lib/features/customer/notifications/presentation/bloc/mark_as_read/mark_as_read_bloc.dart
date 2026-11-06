import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/core/utils/app_strings.dart';

part 'mark_as_read_event.dart';
part 'mark_as_read_state.dart';
part 'mark_as_read_bloc.freezed.dart';

class MarkAsReadBloc extends Bloc<MarkAsReadEvent, MarkAsReadState> {
  MarkAsReadBloc() : super(MarkAsReadState.initial()) {
    on<MarkAllEvent>(markAll);
  }

  FutureOr<void> markAll(
    MarkAllEvent event,
    Emitter<MarkAsReadState> emit,
  ) async {
    emit(MarkAsReadState.loading());
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection(usersCollection)
          .doc(SharedPref().getInt(prefKeys.userId).toString())
          .collection(notificationCollection)
          .where('isSeen', isEqualTo: false)
          .get();

      WriteBatch batch = FirebaseFirestore.instance.batch();

      for (var doc in querySnapshot.docs) {
        batch.update(doc.reference, {'isSeen': true});
      }

      await batch.commit();

      emit(MarkAsReadState.Success());
    } catch (e) {
      emit(MarkAsReadState.error(error: e.toString()));
    }
  }
}
