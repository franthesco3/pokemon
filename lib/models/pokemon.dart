class Pokemon {
  String name;
  String url;
  String image;
  int id;

  Pokemon({this.name, this.url, this.image, this.id});

  void set(String img) => image = img;

  void setId(int id) => id = id;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
