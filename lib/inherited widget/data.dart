
abstract class Database{
  String Name();
  String Phone();
}

class Data implements Database{
  @override
  String Name() {
    String DisplayName = 'Saurabh';
    return DisplayName;
  }

  @override
  String Phone() {
    String phone = '+91-900XXXXXXX';
    return phone;
  }
}