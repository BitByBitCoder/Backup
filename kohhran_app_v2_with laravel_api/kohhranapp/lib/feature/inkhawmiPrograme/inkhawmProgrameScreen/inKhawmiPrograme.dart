import 'package:flutter/material.dart';
import 'package:kohhranapp/core/common/constants.dart';

class InKhawmiPrograme extends StatelessWidget {
  const InKhawmiPrograme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Text(
                "Inkhawm Program",
                style: Constants.titleSize,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
          inkhawmiprogramecards('Sunday', 'assets/images/pci.jpg'),
        ],
      ),
    );
  }

  Padding inkhawmiprogramecards(String title, String img) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff364BBA), width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color(0xfff0f3ff),
        // elevation: 2.0,
        borderOnForeground: true,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('$img'),
            backgroundColor: Colors.purple,
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Text(
                '$title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
