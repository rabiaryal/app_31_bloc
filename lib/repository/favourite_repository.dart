import 'package:app_31/models/favourite_items_models.dart';
import 'package:flutter/material.dart';

class FavouriteRepository {
  Future<List<FavouriteItemModel>> fetchItem() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<FavouriteItemModel> _generateList(int length) {
    return List.generate(
      length,
      (index) => FavouriteItemModel(
        id: index.toString(),
        value: 'Item $index',
      ),
    );
  }
}
