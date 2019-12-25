import './cart.dart';

final Cart cart = new Cart();

final List<Item> items = [
  Item(id: nextId(), price: 22, title: 'Test Item 1'),
  Item(id: nextId(), price: 23, title: 'Test Item 2'),
  Item(id: nextId(), price: 24, title: 'Test Item 3'),
  Item(id: nextId(), price: 25, title: 'Test Item 4'),
  Item(id: nextId(), price: 2, title: 'Test Item 5'),
];

void setup() {
  items.forEach((item) {
    cart.addItem(item);
  });
}
