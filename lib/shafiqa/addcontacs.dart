import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class AddContacts extends StatelessWidget {
  const AddContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 236, 235, 230),
    floatingActionButton: SpeedDial(animatedIcon: AnimatedIcons.menu_close,
    children: [SpeedDialChild(
      child: Icon(Icons.qr_code),label: 'Scan QR code',onTap: () => print("ferst"),
    ),SpeedDialChild(
      child: Icon(Icons.contacts),label: 'Add contacts',onTap: () => print("forst"),
    )],) ,
    
    );
  }
}