void main() {
  gteetingName();
  gteetingName(name: 'Tom');
  gteetingName(clintId: 23);
}

void gteetingName({String name = 'Stranger', int clintId = 99}) {
  print('Hello $name, your id is $clintId');
}
