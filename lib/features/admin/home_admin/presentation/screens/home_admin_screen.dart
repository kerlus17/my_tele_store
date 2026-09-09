import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tele_store/core/common/widgets/admin_app_bar.dart';
import 'package:tele_store/core/style/colors/colors_dark.dart';
import 'package:tele_store/core/style/images/app_images.dart';
import 'package:tele_store/core/utils/admin_drawer_list.dart';
import 'package:tele_store/features/admin/dashBoard/presentation/screens/dash_board_screen.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  Widget page = const DashBoardScreen();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) {
          return menuHomeAdminScreen(
            onPageChange: (a) {
              setState(() {
                page = a;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      mainScreen: page,
      borderRadius: 24,
      showShadow: true,
      drawerShadowsBackgroundColor: ColorsDark.mainColor.withOpacity(0.6),
      menuBackgroundColor: ColorsDark.blueDark,
    );
  }
}

class menuHomeAdminScreen extends StatelessWidget {
  const menuHomeAdminScreen({required this.onPageChange, super.key});

  final void Function(Widget) onPageChange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.blueDark,
      appBar: const AdminAppBar(
        isMain: false,
        backgroundColor: ColorsDark.blueDark,
        title: 'tele Store',
      ), // AdminAppBar
      body: Column(
        children: [
          Column(
            children: adminDrawerList(context)
                .map(
                  (e) => ListTile(
                    onTap: () {
                      if (e.onTap == null) {
                        onPageChange(e.page);
                      } else {
                        e.onTap!();
                      }
                    },
                    title: e.title,
                    leading: e.icon,
                  ),
                )
                .toList(),
          ),
          Expanded(child: Image.asset(AppImages.drawerImage)),
        ],
      ), // Column
    ); // Scaffold
  }
}
