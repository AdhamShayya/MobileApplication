import 'package:flutter/material.dart';

class Thanks extends StatelessWidget {
  const Thanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grand Hotel'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Thank you for sharing your valuable feedback with us.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Image.asset('feedback.png', width: 350.0, height: 350.0),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.grey)),
                  textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Home'),
            ),
          ]),
        ));
  }
}
