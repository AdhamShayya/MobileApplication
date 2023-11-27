import 'package:flutter/material.dart';
import 'rooms.dart';
import 'result.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final TextEditingController _controllerDays = TextEditingController();
  final TextEditingController _controllerFloor = TextEditingController();
  final TextEditingController _controllerSuite = TextEditingController();
  final TextEditingController _controllerFoodService = TextEditingController();

  @override
  void dispose() {
    _controllerDays.dispose();
    _controllerFloor.dispose();
    _controllerSuite.dispose();
    _controllerFoodService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grand Hotel'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: [
          // Image.asset(image, width: 250.0, height: 250.0),
          const Text('Book a Room',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          const Text('Answer the following: ',
              style: TextStyle(
                fontSize: 30.0,
              )),

          const SizedBox(height: 10.0),
          const Text('Enter how many days you will stay',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            height: 50,
            child: TextField(
                controller: _controllerDays,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter number of days')),
          ),
          const SizedBox(height: 10.0),
          const Text('On which floor you want your room 5\$ per floor',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            height: 50,
            child: TextField(
                controller: _controllerFloor,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter floor')),
          ),
          const SizedBox(height: 10.0),
          const Text('if you want a suite(200\$) enter 1, normal room(100\$) enter 0',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            height: 50,
            child: TextField(
                controller: _controllerSuite,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter here')),
          ),
          const SizedBox(height: 10.0),
          const Text('if you want a FoodService(50\$ per day) enter 1, normal room enter 0',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            height: 50,
            child: TextField(
                controller: _controllerFoodService,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Here')),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              int days = int.parse(_controllerDays.text);
              int floor = int.parse(_controllerFloor.text);
              int suite = int.parse(_controllerSuite.text);
              int food = int.parse(_controllerFoodService.text);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Result(),
                  settings: RouteSettings(
                      arguments: Rooms(floor, days, food, suite))));
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
        ])));
  }
}
