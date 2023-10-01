class OstrovRoom {
  String? name;
  String? description;
  String? imageAssets;

  OstrovRoom({this.name, this.description, this.imageAssets});

  OstrovRoom.fromJson(Map<String, dynamic> json) {
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
