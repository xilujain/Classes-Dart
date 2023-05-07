class Camera {
  int? _id;
  String? _brand;
  String? _color;
  int? _price;

  get getID {
    return this._id;
  }
  set setID(int? id) {
    this._id = id;
  }

  get getBrand {
    return this._brand;
  }
  set setBrand(String? brand) {
    this._brand = brand;
  }

  get getColor {
    return this._color;
  }
  set setColor(String? color) {
    this._color = color;
  }

  get getPrice {
    return this._price;
  }
  set setPrice(int? price) {
    this._price = price;
  }

  Camera(this._id, this._brand, this._color, this._price);
}
