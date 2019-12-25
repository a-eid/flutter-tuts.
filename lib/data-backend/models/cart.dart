import 'dart:collection';
import 'package:flutter/foundation.dart';

int id = 0;
String nextId() {
  int next = id++;
  return next.toString();
}

class Item {
  final String id;
  final String title;
  final int price;
  Item({this.id, this.title, this.price});
}

class Cart with ChangeNotifier {
  final LinkedHashMap<String, Item> _items = LinkedHashMap();

  List<Item> items() {
    return _items.values;
  }

  void removeItem(String key) {
    _items.remove(key);
    notifyListeners();
  }

  void updateItem(String key, Item item) {
    _items.update(key, (_) => item);
    notifyListeners();
  }

  void addItem(Item item) {
    _items.putIfAbsent(item.id, () => item);
    notifyListeners();
  }
}
