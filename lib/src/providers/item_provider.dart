import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quick_pick/src/models/item.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];
  Item? _lastPickedItem;

  final Random _random = Random();

  List<Item> get items => _items;

  ItemProvider() {}

  /// Add an item to the list
  Future<void> addItem(Item item) async {
    final box = await Hive.openBox<Map<String, dynamic>>('itemsBox');
    await box.add(item.toMap());
    _items.add(item);
    notifyListeners();
  }
}
