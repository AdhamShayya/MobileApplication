import 'package:flutter/material.dart';
import 'Questions.dart';
import 'rating.dart';
import 'package.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int days = 1;
  int floor = 1;
  bool suite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Grand Hotel',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: [
          const Text('Welcome to The main Page: ',
              style:
                   TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Image.asset('logo.png', width: 250.0, height: 250.0),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Questions()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.grey)),
                  textStyle:
                      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Register'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Rating()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.grey)),
                  textStyle:
                      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Rate Us'),
            ),
            const SizedBox(height: 10, width: 20),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Packages()));

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: Colors.grey)),
                  textStyle:
                      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text('Services'),
            ),
          ]),
        ])));
  }
}
