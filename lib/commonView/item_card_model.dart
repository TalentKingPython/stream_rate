class ItemCardModel {
  String? _itemName;
  String? _image;
  int? _year;
  double? _imdb = 0;
  double? _metacritic = 0;
  int? _rottenTomatoes;
  double? _letterboxd = 0;

  String get itemName => _itemName ?? "";

  String get image => _image ?? "";

  int get year => _year ?? 0;

  double get imdb => _imdb ?? 0.0;

  double get metacritic => _metacritic ?? 0.0;

  int get rottenTomatoes => _rottenTomatoes ?? 0;

  double get letterboxd => _letterboxd ?? 0.0;

  ItemCardModel({
    String? itemName,
    String? image,
    int? year,
    double? imdb,
    double? metacritic,
    int? rottenTomatoes,
    double? letterboxd,
  }) {
    _itemName = itemName;
    _image = image;
    _year = year;
    _imdb = imdb;
    _metacritic = metacritic;
    _rottenTomatoes = rottenTomatoes;
    _letterboxd = letterboxd;
  }

  ItemCardModel.fromJson(dynamic json) {
    _itemName = json["item_name"];
    _image = json["image"];
    _year = json["year"];
    _imdb = (json["imdb"] as num).toDouble();
    _metacritic = (json["metacritic"] as num).toDouble();
    _rottenTomatoes = json["rotten_tomatoes"];
    _letterboxd = (json["letterboxd"] as num).toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["item_name"] = _itemName;
    map["image"] = _image;
    map["year"] = _year;
    map["imdb"] = _imdb;
    map["metacritic"] = _metacritic;
    map["rotten_tomatoes"] = _rottenTomatoes;
    map["letterboxd"] = _letterboxd;
    return map;
  }
}
