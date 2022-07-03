import 'dart:html';

final InputElement MenuInput = querySelector('#Menu-input') as InputElement;
final UListElement MenuList = querySelector('#Menu-list') as UListElement;
final ButtonElement deleteAll = querySelector('#delete-all') as ButtonElement;

void main() {
  MenuInput.onChange.listen(addToDoItem);
  deleteAll.onClick.listen((_) => MenuList.children.clear());
}

void addToDoItem(Event e) {
  final newMenu = LIElement()..text = MenuInput.value;
  newMenu.onClick.listen((_) => newMenu.remove());
  MenuInput.value = '';
  MenuList.children.add(newMenu);
}
