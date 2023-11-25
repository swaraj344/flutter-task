import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task/app/modules/home/views/add_item_dialog.dart';
import 'package:task/app/modules/home/views/app_drawer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(const AddItemDialog());
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 4),
              child: Row(
                children: [
                  Expanded(
                      child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: TextField(
                      onChanged: (value) {
                        controller.searchString.value = value;
                      },
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // isDense: true,
                        border: InputBorder.none,
                        hintText: "Search...",
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 45,
                    // width: 60,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Material(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: PopupMenuButton(
                          padding: EdgeInsets.zero,
                          position: PopupMenuPosition.under,
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () {
                                controller.shuffleItems();
                              },
                              child: const Text("Shuffle Items"),
                              // padding: EdgeInsets.zero,
                            )
                          ],
                          child: const Icon(Icons.filter_alt_outlined),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
      body: Obx(() {
        final items = controller.items
            .where((p0) =>
                p0.itemName
                    .toLowerCase()
                    .contains(controller.searchString.value.toLowerCase()) ||
                p0.shortDescription
                    .toLowerCase()
                    .contains(controller.searchString.value.toLowerCase()))
            .toList();
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 60, left: 10, right: 10),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item.itemName),
              subtitle: Text(item.shortDescription),
              trailing: Column(
                children: [
                  const Text("Quantity"),
                  Text(
                    item.itemQuantity.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
