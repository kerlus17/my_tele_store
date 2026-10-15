import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:tele_store/features/customer/profile/presentation/refactor/profile_body.dart';

class ProfileScrren extends StatelessWidget {
  const ProfileScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileBloc>()..add(ProfileEvent.getUserInfo()),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const ProfileBody(),
      ),
    );
  }
}
