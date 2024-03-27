import 'package:flutter/material.dart';

class CommeeteeListScreen extends StatefulWidget {
  const CommeeteeListScreen({super.key});

  @override
  State<CommeeteeListScreen> createState() => _CommeeteeListScreenState();
}

class _CommeeteeListScreenState extends State<CommeeteeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                    Expanded(
                        child: listtile(
                            'Kohhran',
                            Icon(Icons.home, color: Color(0xff364BBA)),
                            context)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container listtile(String title, Icon icon, BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) =>{}));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                color: Color(0xfff0f3ff),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 3),
                      blurRadius: 10),
                ],
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xff364BBA), width: 3)),
            height: 150,
            child: Center(
                child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [icon, Text('$title')],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
