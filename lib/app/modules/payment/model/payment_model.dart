import 'card_model.dart';

class PaymentModel {
  int _id = 0;
  DateTime _createdAt = new DateTime.now();
  CardModel _cardModel = new CardModel();
  double _value = 0.0;

  String _name = "";

  int get id {
    return _id;
  }

  set id(int value) {
    _id = value;
  }

  DateTime get createdAt {
    return _createdAt;
  }

  set createdAt(DateTime value) {
    _createdAt = value;
  }

  CardModel get cardModel {
    return _cardModel;
  }

  set cardModel(CardModel value) {
    _cardModel = value;
  }

  double get value {
    return _value;
  }

  set value(double value) {
    _value = value;
  }

  String get name {
    return _name;
  }

  set name(String value) {
    _name = value;
  }
}
