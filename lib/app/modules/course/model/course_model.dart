class CourseModel {
  int _id = 0;
  String _name = "";
  String _description = "";
  String _image = "";
  String _category = "";
  String _price = "";

  CourseModel(this._id, this._name, this._description, this._image, this._category, this._price);

  int get id {
    return _id;
  }

  set id(int value) {
    _id = value;
  }

  String get name {
    return _name;
  }

  set name(String value) {
    _name = value;
  }

  String get description {
    return _description;
  }

  set description(String value) {
    _description = value;
  }

  String get image {
    return _image;
  }

  set image(String value) {
    _image = value;
  }

  String get category {
    return _category;
  }

  set category(String value) {
    _category = value;
  }

  String get price {
    return _price;
  }

  set price(String value) {
    _price = value;
  }
}
