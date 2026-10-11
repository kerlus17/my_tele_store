import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/bloc/delete_user_bloc.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:tele_store/features/admin/users/presentation/refacrors/users_body.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetAllUsersBloc>()
            ..add(GetAllUsersEvent.fetchAllUsers(isloading: true)),
        ),
        BlocProvider(
          create: (context) => sl<DeleteUserBloc>(),
        ),
      ],

      child: const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'Users',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ), // AdminAppBar
        body: UsersBody(),
      ), // Scaffold
    );
  }
}
