import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/toast/show_toast.dart';
import 'package:tele_store/core/common/widgets/custom_text.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/fonts/font_family_helper.dart';
import 'package:tele_store/core/style/fonts/font_weight_helper.dart';
import 'package:tele_store/features/admin/users/data/models/get_all_users_response.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/bloc/delete_user_bloc.dart';
import 'package:tele_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:tele_store/features/admin/users/presentation/widgets/table_cell_title.dart';

class TableForUsers extends StatelessWidget {
  const TableForUsers({required this.userList, super.key});
  final List<UsersModel> userList;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: ColorsDark.blueLight),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FixedColumnWidth(100.w),
        1: const FlexColumnWidth(),
        2: FixedColumnWidth(110.w),
      },
      children: [
        const TableRow(
          decoration: BoxDecoration(
            color: ColorsDark.blueDark,
          ),
          children: [
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitle(
                icon: Icons.person,
                title: 'Name',
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitle(
                icon: Icons.email,
                title: 'Email',
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitle(
                icon: Icons.delete,
                title: 'Delete',
              ),
            ),
          ],
        ),
        ...List.generate(
          userList.length,
          (index) => TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextApp(
                    text: userList[index].name ?? "",
                    theme: context.textStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextApp(
                    text: userList[index].email ?? "",
                    theme: context.textStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DeleteUserIcon(
                    userId: userList[index].id ?? "",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DeleteUserIcon extends StatelessWidget {
  const DeleteUserIcon({
    required this.userId,
    super.key,
  });
  final String userId;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteUserBloc, DeleteUserState>(
      listener: (context, state) {
state.whenOrNull(
  success: () {
    context
        .read<GetAllUsersBloc>()
        .add(const GetAllUsersEvent.fetchAllUsers(isloading: true));
    ShowToast.showToastSuccessTop(
      context: context,
      message: 'User has been deleted',
    );
  },
  failure: (error) {
    ShowToast.showToastErrorTop(
      context: context,
      message: error,
    );
  },
);      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return GestureDetector(
              onTap: () {
                context
                    .read<DeleteUserBloc>()
                    .add(DeleteUserEvent.deleted(userId));
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.delete, color: Colors.red, size: 25),
              ),
            );
          },
          loading: (id) {
            if (id == userId) {
              return const Padding(
                padding: EdgeInsets.all(8),
                child: const Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 2,
                    ),
                  ),
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  context
                      .read<DeleteUserBloc>()
                      .add(DeleteUserEvent.deleted(userId));
                },
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.delete, color: Colors.red, size: 25),
                ),
              );
            }
          },
        );
      },
    );
  }
}
