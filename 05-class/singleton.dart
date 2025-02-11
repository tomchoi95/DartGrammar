class SingleTonTest {
  static final SingleTonTest _singleTon = SingleTonTest._create();

  SingleTonTest._create(); // private 생성자

  factory SingleTonTest() {
    return _singleTon;
  }

  void checkPrint() {
    print("저는 싱글톤에서 사용 가능 한 함수 입니다.");
  }
}

class NotSingleTonTest {
  NotSingleTonTest() {}
}

void main() {
  SingleTonTest test1 = SingleTonTest(); // 싱글 톤
  SingleTonTest test2 = SingleTonTest(); // 두번 째 싱글 톤

  NotSingleTonTest test3 = NotSingleTonTest();
  NotSingleTonTest test4 = NotSingleTonTest();

  test1.checkPrint();
  print(test1 == test2);
  print(test3 == test4);
}
