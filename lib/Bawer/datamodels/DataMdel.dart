// ignore_for_file: file_names

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
      caption:
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      post: 'assets/Linkedin.png'),
  Feeds(
      avatar: 'assets/add-user.png',
      username: '7ama',
      caption: 'Lorem ipsum dolor sit amet,',
      post: 'assets/Linkedin.png'),
  Feeds(
      avatar: 'assets/add-user.png',
      username: 'Zinar',
      caption:
          'consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      post: 'assets/Linkedin.png'),
  Feeds(
      avatar: 'assets/add-user.png',
      username: 'Shav',
      caption:
          'adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      post: 'assets/Linkedin.png'),
];

class Massegs {
  String username;
  String avatar;
  String mass;
  String time;
  Massegs({
    required this.avatar,
    required this.username,
    required this.mass,
    required this.time,
  });
}

List<Massegs> massege = [
  Massegs(
      avatar: 'assets/add-user.png',
      username: 'Bawer',
      mass:
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      time: 'Fri'),
  Massegs(
      avatar: 'assets/add-user.png',
      username: 'Bawer',
      mass:
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      time: 'Fri'),
  Massegs(
      avatar: 'assets/add-user.png',
      username: 'Bawer',
      mass:
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      time: 'Fri'),
];
