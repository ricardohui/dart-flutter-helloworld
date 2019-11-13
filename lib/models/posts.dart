class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        title: json['title'],
        userId: json['userId'],
        id: json['id'],
        body: json['body']);
  }
}
