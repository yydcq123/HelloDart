import 'dart:html';

void main() {
  int a = 1;
  int b = 2;
  int c = a + b;
  querySelector('#RipVanWinkle')!.innerHtml ='Dart已经集成到了HTML中了~<br/> $c = $a + $b';
}
