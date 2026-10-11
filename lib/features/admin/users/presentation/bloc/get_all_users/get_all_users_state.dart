part of 'get_all_users_bloc.dart';

@freezed
class GetAllUsersState with _$GetAllUsersState {
  const factory GetAllUsersState.loading() = LoadingState;
  const factory GetAllUsersState.success(List<UsersModel> response) = SuccessState;
  const factory GetAllUsersState.error(String error) = ErrorState;
    const factory GetAllUsersState.empty() = EmptyState;

  const factory GetAllUsersState.searchUsers(List<UsersModel> searchUser) = SearchUsersState;

}
