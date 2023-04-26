import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'admin_drawer_list_tile.dart';
import 'admin_drawer_model.dart';

class AdminDrawerMenu extends StatefulWidget {
  const AdminDrawerMenu({Key? key, this.hasHeader = true, this.isDesktop = false}) : super(key: key);
  final bool hasHeader;
  final bool isDesktop;

  @override
  State<AdminDrawerMenu> createState() => _AdminDrawerMenuState();
}

class _AdminDrawerMenuState extends State<AdminDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    final drawerList = AdminDrawerModel.getAdminDrawerList;
    return SizedBox(
      width: Constants.drawerMenuWith,
      child: Drawer(
        child: Column(
          children: [
            if (widget.hasHeader) _drawerHeader(context),
            const SizedBox(height: 8),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final listItem = drawerList[index];

                return AdminDrawerListTile(
                  title: listItem.title,
                  iconData: listItem.iconData,
                  tileColor: context.router.currentPath == '/admin/${listItem.route}' ? Colors.white12 : null,
                  onPress: () {
                    context.router.replaceNamed(listItem.route);
                    if (!widget.isDesktop) {
                      Navigator.pop(context);
                    }
                    // Set state for item backgroundColor
                    setState(() {});
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 0,
              ),
              itemCount: drawerList.length,
            )
          ],
        ),
      ),
    );
  }

  Widget _drawerHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: Constants.darkPrimaryColor,
        height: 60,
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Admin Panel',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Constants.darkBackgroundColor),
                ),
              ),
              IconButton(
                  onPressed: () {
                    if (!widget.isDesktop) {
                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Constants.darkBackgroundColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void itemClicked() {
    /*
    if (controller.scaffoldStateKey.currentState!.isDrawerOpen) {
      controller.scaffoldStateKey.currentState!.openEndDrawer();
    }

     */
  }
}
