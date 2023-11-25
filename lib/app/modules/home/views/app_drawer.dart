import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/app/modules/home/views/add_item_dialog.dart';
import 'package:task/app/routes/app_pages.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                trailing: Icon(
                  Icons.flutter_dash_rounded,
                  color: Colors.purple,
                  size: 30,
                ),
                title: Text("Hey Flutter!!"),
                subtitle: Text("Let's Build Something"),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.back();
              Get.dialog(const AddItemDialog());
            },
            title: const Text("Add New Item"),
            trailing: Icon(
              Icons.add_circle_rounded,
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.FAVORITE);
            },
            title: const Text("Favorite Items"),
            trailing: Icon(
              Icons.favorite,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
