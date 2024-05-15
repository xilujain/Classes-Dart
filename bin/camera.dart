class Camera {
  int? _id;
  String? _brand;
  String? _color;
  int? _price;

  get getID {
    return _id;
  }
  set setID(int? id) {
    _id = id;
  }

  get getBrand {
    return _brand;
  }
  set setBrand(String? brand) {
    _brand = brand;
  }

  get getColor {
    return _color;
  }
  set setColor(String? color) {
    _color = color;
  }

  get getPrice {
    return _price;
  }
  set setPrice(int? price) {
    _price = price;
  }

  Camera(this._id, this._brand, this._color, this._price);
}
