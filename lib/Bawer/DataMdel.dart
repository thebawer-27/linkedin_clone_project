class Feeds {
  String username;
  String avatar;
  String caption;
  String post;
  Feeds({
    required this.avatar,
    required this.username,
    required this.caption,
    required this.post,
  });
}

List<Feeds> feed = [
  Feeds(
      avatar: 'assets/add-user.png',
      username: 'Bawer',
      caption: '',
      post: 'assets/Linkedin.png'),
  Feeds(
      avatar: 'assets/add-user.png',
      username: '7ama',
      caption: '',
      post: 'assets/Linkedin.png'),
  Feeds(
      avatar: 'assets/add-user.png',
      username: 'Zinar',
      caption: '',
      post: 'assets/Linkedin.png'),
];
