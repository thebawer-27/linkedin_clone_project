// ignore_for_file: file_names

class Feeds {
  String username;
  String avatar;
  String caption;
  String post;
  String jobs;
  Feeds({
    required this.avatar,
    required this.username,
    required this.caption,
    required this.post,
    required this.jobs,
  });
}

List<Feeds> feed = [
  Feeds(
      avatar: 'assets/ee.jpg',
      username: 'Victoria Phillips',
      jobs: 'Mobile Developer',
      caption:
          "Google trends comparison between #flutter and #reactnative.So, looks Flutter seems pretty dominant in the world! Learn more: https://lnkd.in/eGGd6kw2",
      post: 'assets/pa.jpg'),
  Feeds(
      avatar: 'assets/e.jpg',
      username: 'Daniel West',
      jobs: 'Technical Support Specialist',
      caption:
          'Today is all about our CUSTOMERS! We are so excited to officially offer our Customer Portal solution. Designed for both Android and IOS, Customer Portal can elevate your customer experience by streamlining order management and providing visibility to delivery statuses.We just issued a press release this morning. Check it out to learn more!: https://lnkd.in/gHqsQaf4',
      post: 'assets/pprod.jpg'),
  Feeds(
      avatar: 'assets/ff.webp',
      username: 'Nicholas Hayes',
      jobs: 'Designer',
      caption: 'Vote to cancel Google Meet',
      post: 'assets/ddd.jpg'),
  Feeds(
      avatar: 'assets/c.jpg',
      username: 'Samantha Jenkins',
      jobs: 'Content Creater',
      caption:
          '⭐ Improving your content The other half of my media mentions have come from reporters finding me online through one of my videos. If you focus on creating valuable content for your ideal audience, the media will come to you  You can watch the full inteview here: https://lnkd.in/gWbg_Nmi',
      post: 'assets/cc.jpg'),
  Feeds(
      avatar: 'assets/b.jpg',
      username: 'Amelia Martin',
      jobs: 'Technical Writer',
      caption:
          '🌟 Announcing FREE AI Product Management Program for anyone impacted by the tech downturn🌟',
      post: 'assets/ttt.jpg'),
  Feeds(
      avatar: 'assets/d.jpg',
      username: 'Matthew Bradley',
      jobs: 'flutter developer',
      caption: 'QR Auto Login with Flutter',
      post: 'assets/paa.jpg'),
  Feeds(
      avatar: 'assets/a (4).jpg',
      username: 'Gabrielle Montgomery',
      jobs: 'Healthcare',
      caption:
          'Healthcare is changing, and you have to keep up. Dont let your organization get left behind in 2023.',
      post: 'assets/hc.jpg'),
  Feeds(
      avatar: 'assets/a (3).jpg',
      username: 'Andrew Harrison',
      jobs: 'Program Manager',
      caption: 'Is this supposed to replace me?',
      post: 'assets/pb.jpg'),
  Feeds(
      avatar: 'assets/a.jpg',
      username: 'Isabella Martinez',
      jobs: 'Sales Engineer',
      caption:
          'Please join us in welcoming Shawn Beatty to the Securiti sales team. Shawn joins Securiti from Forcepoint where he served customers in the Minneapolis market and surrounding area. In preparation for the Securiti journey Shawn completed the',
      post: 'assets/ss.jpg'),
  Feeds(
      avatar: 'assets/a (2).jpg',
      username: 'William Sanders',
      jobs: 'IT Support Technician',
      caption:
          "Hey LinkedIn Network Community, I'm beyond happy and grateful to announce that I have officially accepted a role as Jr. IT Security Analyst at Calero! This post feels like I'm accepting an Oscar and, there are so many people in my network to thank; from my true peers",
      post: 'assets/it.jpg'),
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
      avatar: 'assets/a (2).jpg',
      username: 'William Sanders',
      mass:
          "Hi Bawer,My name is Christin Smith, and I'm an Enrollment Services Manager at the University of Arizona Global Campus.",
      time: 'Fri'),
  Massegs(
      avatar: 'assets/a.jpg',
      username: 'Isabella Martinez',
      mass:
          "Hi Bawer,Here's a tip for quickly and easily finding a role that works for you. Set up job alerts to get mobile or email notifications for every new opening that matches your search criteria.",
      time: 'Fri'),
];
