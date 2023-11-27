import 'package:flutter/material.dart';
import 'rooms.dart';
import 'rating.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final room = ModalRoute.of(context)!.settings.arguments as Rooms;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Grand Hotel'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 10),
            Text(room.toString(),
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(color: Colors.grey)),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                child: const Text('Back'),
              ),
            ]),
            Image.asset('download.png', width: 350.0, height: 350.0),
          ]),
        ));
  }
}
