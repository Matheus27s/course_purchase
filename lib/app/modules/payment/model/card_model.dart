class CardModel {
  int _id = 0;
 String _number = "";
 String _cvv = "";

 int get id {
    return _id;
  }

  set id(int value) {
    _id = value;
  }

  String get number {
    return _number;
  }

  set number(String value) {
    _number = value;
  }

  String get cvv {
    return _cvv;
  }

  set cvv(String value) {
    _cvv = value;
  }
}