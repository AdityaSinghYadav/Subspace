class Blog{
  Blog({
    required this.id,
    required this.imageUrl,
    required this.title,
  });
  late final String id;
  late final String imageUrl;
  late final String title;

  // Blog.fromJson(Map<String, dynamic> json){
  //   id = json['id'];
  //   imageUrl = json['image_url'];
  //   title = json['title'];
  // }
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'],
      imageUrl: json['image_url'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image_url'] = imageUrl;
    data['title'] = title;
    return data;
  }


}