void main() {
  // 조건문 써보기
  bool isFootball = false;

  // ignore: dead_code
  if (isFootball) {
    print('Go Football!');
  } else {
    print('Go Home!');
  }
  isFootball = false;

  // for 문 써보기
  List<String> daysOfWeek = ['Monday', 'Tuesday', 'Sunday', 'Wednesday'];

  daysOfWeek.forEach((day) => print(day));

  // enum 써보기

  print(Day.values);
  print('${Day.values[0]}');
  print(Day.values.byName('mon'));

  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  // final을 사용한 경우
  for (final object in flybyObjects) {
    print(object);
  }

  // var을 사용한 경우
  for (var object in flybyObjects) {
    print(object);
  }

  String name = 'Dart';
  // 예외 처리 추가
  try {
    // 예외가 발생할 수 있는 코드
    print('Name: $name');
    name.indexOf(name[0], name.length - (name.length + 2));
    name.indexOf(name[2]);
  } on RangeError catch (exception) {
    // RangeError 예외를 처리
    print('On Exception: $exception');
  } catch (exception) {
    // 모든 유형의 예외를 처리
    print('Catch Exception: $exception');
  } finally {
    // 예외 발생 여부와 상관없이 항상 실행
    print('Mission completed!');
  }
}

enum Day { sun, mon, tues }
