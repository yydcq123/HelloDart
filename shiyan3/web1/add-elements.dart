import 'dart:html';

final InputElement MenuInput1 = querySelector('#Menu-input1') as InputElement;
final UListElement MenuList1 = querySelector('#Menu-list1') as UListElement;

void main() {
  MenuInput1.onChange.listen(addMenuItem);
}

void addMenuItem(Event e) {
  final newList1 = LIElement()..text = MenuInput1.value;
  MenuInput1.value = '';
  MenuList1.children.add(newList1);
}
