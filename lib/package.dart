import 'package:flutter/material.dart';
import 'packageResult.dart';
class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  String selectedPackage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Package'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Select a Package:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10),
          buildPackageTile('Package 1',
              """Perfect price for honeymoon couples: 
              
                  -Enjoy A week in our Special Suite
                  
                  -3 delicious meals per day
                  
                  -FOR ONLY 1599\$"""),
          const SizedBox(height: 10),
          buildPackageTile('Package 2',
              """
              3 days bundle sale:
              
              Enjoy 3 days at our wonderful suite with Food Service 
              
              FOR ONLY 599\$"""),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PackageResult(selectedPackage),
                ),
              );
            },
            child: const Text('Book Now'),
          ),
        ],
      )
    );
  }

  Widget buildPackageTile(String packageName, String packageDescription) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        title: Text(packageName),
        subtitle: Text(packageDescription),
        leading: Radio(
          value: packageName,
          groupValue: selectedPackage,
          onChanged: (value) {
            setState(() {
              selectedPackage = value!;
            });
          },
        ),
      ),
    );
  }
}
