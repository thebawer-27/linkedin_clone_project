// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'No message...yet!',
                style: TextStyle(fontSize: 30),
              ),
              const Text(
                'Reach out and start a chat.Greate\n things might happen.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Start a new message'),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(165, 141, 110, 99),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.open_in_new_outlined),
      ),
    );
  }
}
