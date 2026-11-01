import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/common/widgets/custome_app_bar.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:tele_store/features/customer/search/presentation/refactor/search_body.dart';

class SearchScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchBloc>(),
      child: const Scaffold(
        appBar: CustomeAppBar(title: 'search'),
        body: SearchBody(),
      ),
    );
  }
}
