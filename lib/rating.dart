import 'package:flutter/material.dart';
import 'thankyou.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grand Hotel'),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 40),
        const Row(children: [
          SizedBox(width: 200),
          Text(
            'Is there anything specific that stood out to you?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]),
        const SizedBox(height: 10),
        const Row(children: [
          SizedBox(width: 200),
          SizedBox(
            width: 300.0,
            height: 50.0,
            child: TextField(
              style: TextStyle(fontSize: 18.0),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter your Answer'),
            ),
          ),
        ]),
        const SizedBox(height: 20),
        const Row(children: [
          SizedBox(width: 200),
          Text(
            'How was your experience with the room Decoration?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]),
        const SizedBox(height: 10),
        const Row(children: [
          SizedBox(width: 200),
          SizedBox(
            width: 300.0,
            height: 50.0,
            child: TextField(
              style: TextStyle(fontSize: 18.0),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter your Answer'),
            ),
          ),
        ]),
        const SizedBox(height: 20),
        const Row(children: [
          SizedBox(width: 200),
          Text(
            ' the information about the rooms, FoodService, and pricing clear?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]),
        const SizedBox(height: 10),
        const Row(children: [
          SizedBox(width: 200),
          SizedBox(
            width: 300.0,
            height: 50.0,
            child: TextField(
              style: TextStyle(fontSize: 18.0),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter your Answer'),
            ),
          ),
        ]),
        const SizedBox(height: 20),
        Row(children: [
          const SizedBox(width: 200),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Thanks()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: Colors.grey)),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            child: const Text('Submit'),
          ),
        ]),
      ]),
    );
  }
}
