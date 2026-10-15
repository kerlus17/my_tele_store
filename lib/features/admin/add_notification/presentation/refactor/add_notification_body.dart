import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/loading/empty_screen.dart';
import 'package:tele_store/features/admin/add_notification/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/add_notification_item.dart';
import 'package:tele_store/features/admin/add_notification/presentation/widgets/create/create_notification.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        children: [
          CreateNotification(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                SliverToBoxAdapter(
                  child:
                      BlocBuilder<
                        GetAllNotificationAdminBloc,
                        GetAllNotificationAdminState
                      >(
                        builder: (context, state) {
                          return state.when(
                            empty: EmptyScreen.new,
                            error: Text.new,
                            success: (success) {
                              return ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return AddNotificationItem(
                                    notification: success[index],
                                    indexId: index,
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 14.h);
                                },
                                itemCount: success.length,
                              );
                            },
                            loading: () {
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              );
                            },
                          );
                        },
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
