import 'dart:math';

import 'package:get/get.dart';
import 'package:task/app/data/models/data_item.dart';

class HomeController extends GetxController {
  final items = <DataItem>[].obs;
  final searchItems = <DataItem>[].obs;
  final searchString = "".obs;

  @override
  void onInit() {
    items.value = List.generate(20, (index) {
      final quantity = Random().nextInt(15) + 1;
      index++;
      return DataItem(
        itemName: "Item $index",
        shortDescription: "Item $index description",
        itemQuantity: quantity,
      );
    });

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  shuffleItems() {
    items.shuffle();
  }
}
