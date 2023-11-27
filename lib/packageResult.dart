import 'package:flutter/material.dart';
import 'package.dart';

class PackageResult extends StatelessWidget{
  final String selectedPackage;

  const PackageResult(this.selectedPackage, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedPackage == "Package 1"
                  ? 'Congratulations to the lovely couple! We\'re thrilled to be a part of your special journey together.'
                  : 'Enjoy Your 3 Days Bundle at Our Lovely Hotel.',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
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

          ],
        ),
      ),
    );
  }
}

