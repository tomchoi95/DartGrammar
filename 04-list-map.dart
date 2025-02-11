void main() {
  // 기본 리스트 생성
  List<String> months = ['January', 'Febuary', 'March'];

  // 요소 추가.
  months.add('April');

  // 리스트 순회
  months.forEach(print);

  // 인덱스로 접근
  print(months[0]);

  // 기본 맵 생성
  Map<int, String> monthss = {
    1: 'January',
    2: 'Febuary',
    3: 'March',
  };

  // 새 항목 추가
  monthss[4] = 'April';

  monthss.forEach((key, value) => print('$key: $value'));
  monthss.forEach((key, value) {
    print('$key, $value');
  });
}
