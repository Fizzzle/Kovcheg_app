class NoyCategory {
  String? foodName;
  String? imageAssets;

  NoyCategory({this.foodName, this.imageAssets});

  NoyCategory.fromJson(Map<String, dynamic> json) {
    foodName = json['foodName'];
    imageAssets = json['imageAssets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodName'] = this.foodName;
    data['imageAssets'] = this.imageAssets;
    return data;
  }
}
