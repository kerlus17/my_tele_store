part of 'get_all_users_bloc.dart';

@freezed
class GetAllUsersEvent with _$GetAllUsersEvent {
  const factory GetAllUsersEvent.started() = _Started;
    const factory GetAllUsersEvent.fetchAllUsers({required bool isloading}) = FetchAllUsersEvent;
    const factory GetAllUsersEvent.searchForUsers(String? searchName) = SearchForUsersEvent;



}