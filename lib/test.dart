void main() {
  Airplane airplane = Airplane(HightechOnDefaultCockpit());
  airplane.airplaneFeature();
  airplane.chairValue();
}

class Airplane {
  String? _airplaneName;
  DefaultCockpit? _defaultCookpit;

  Airplane(DefaultCockpit defaultCookpit) {
    _airplaneName = "기본 비행기";
    _defaultCookpit = defaultCookpit;
  }

  //비행기 기체 로직
  void airplaneFeature() {
    print("$_airplaneName 입니다.");
  }

  //비행기 의자 값
  void chairValue() {
    _defaultCookpit!.chairValue();
  }
}

//조종석
class DefaultCockpit {
  int? _chairFunction;

  DefaultCockpit() {
    _chairFunction = 50;
  }

  int? chairFeature() {
    print('기본 의자압니다.');
    return _chairFunction;
  }

  void chairValue() {
    print("의자값은 $_chairFunction입니다.");
  }
}

//조종석
class HightechOnDefaultCockpit extends DefaultCockpit{

  @override
  int? chairValue() {
    _chairFunction = 150;
    return _chairFunction;
  }
}


