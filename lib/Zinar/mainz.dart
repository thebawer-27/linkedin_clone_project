import 'package:flutter/material.dart';
import './profile.dart';

void main() {
  runApp(const ProfileMain());
}

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
