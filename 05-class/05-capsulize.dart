class BankAccount {
  String _accountNumber;
  double _balance = 0.0;

  BankAccount(this._accountNumber);

  // Getter 내부 데이터 접근 제한( 데이터 은닉)
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  // 입금 메서드
  void deposite(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('입금 : $amount');
      print('잔액: $_balance');
    }
  }

  // 출금 메서드
  bool withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('출금: $amount');
      print('잔액 : $_balance');
      return true;
    } else {
      print('출금 실패: $amount');
      print('출금 실패: $amount');
      return false;
    }
  }
}

void main() {
  var list = [1, 2, 3];
  // assert는 조건이 false일 경우 프로그램을 중단하고 오류를 발생시킵니다.
  assert(list.length == 3); // list의 길이가 3인지 확인
  assert(list[1] == 2); // list의 두 번째 요소가 2인지 확인

  list[1] = 1;
  assert(list[1] == 1); // list의 두 번째 요소가 1로 변경되었는지 확인
}
