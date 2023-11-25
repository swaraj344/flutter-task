import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/app/data/models/data_item.dart';
import 'package:task/app/modules/home/controllers/home_controller.dart';

class AddItemDialog extends StatefulWidget {
  const AddItemDialog({super.key});

  @override
  State<AddItemDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  final title = "".obs;
  final description = "".obs;
  final quantity = Rxn<int>();
  final showerror = false.obs;

  addItem() {
    showerror.value = true;
    if (title.value.isEmpty ||
        description.value.isEmpty ||
        quantity.value == null) return;

    Get.find<HomeController>().items.insert(
        0,
        DataItem(
            itemName: title.value,
            shortDescription: description.value,
            itemQuantity: quantity.value ?? 0));
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Add Item"),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Obx(() {
                  return TextFormField(
                    autovalidateMode: showerror.value
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (value) {
                      if (value != null) {
                        return value.isEmpty ? "Title Can't be blank" : null;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      title.value = value;
                    },
                    decoration: const InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      hintText: "Enter Title",
                      labelText: "Title",
                    ),
                  );
                }),
                const SizedBox(
                  height: 15,
                ),
                Obx(() {
                  return TextFormField(
                    autovalidateMode: showerror.value
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (value) {
                      if (value != null) {
                        return value.isEmpty
                            ? "Description Can't be blank"
                            : null;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      description.value = value;
                    },
                    decoration: const InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      hintText: "Enter Description",
                      labelText: "Description",
                    ),
                  );
                }),
                const SizedBox(
                  height: 15,
                ),
                Obx(() {
                  return DropdownButtonFormField<int>(
                    autovalidateMode: showerror.value
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    validator: (value) {
                      return value == null ? "Select Quantity" : null;
                    },
                    value: quantity.value,
                    decoration: const InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      // hintText: "Select Quantity",
                      labelText: "Select Quantity",
                    ),
                    items: List.generate(
                        20,
                        (index) => DropdownMenuItem(
                            value: index + 1,
                            child: Text((index + 1).toString()))),
                    onChanged: (value) {
                      quantity.value = value;
                    },
                  );
                }),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      addItem();
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add Item"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
