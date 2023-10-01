class OstrovPS {
  String? name;
  String? description;
  String? imageAssets;

  OstrovPS({this.name, this.description, this.imageAssets});

  OstrovPS.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    imageAssets = json['imageAssets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['imageAssets'] = this.imageAssets;
    return data;
  }
}
