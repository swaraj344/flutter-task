import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Theme.of(context).primaryColor,
            size: 60,
          ),
          const Center(
            child: Text(
              'Favorite',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
