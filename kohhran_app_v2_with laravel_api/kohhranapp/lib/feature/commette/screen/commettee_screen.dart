import 'package:flutter/material.dart';

class CommeetteeScreen extends StatelessWidget {
  CommeetteeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          '$title',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 36),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                titleNName('Chairman', 'Lalhruaitluanga'),
                titleNName('Vice Chairman', 'Lalhruaitluanga'),
                titleNName('Secretary', 'Lalhruaitluanga'),
                titleNName('AssistandSecretary', 'Lalhruaitluanga'),
                titleNName('Finance', 'Lalhruaitluanga')
              ],
            ),
            Column(
              children: [
                Text('Member'),
                memberContainer(),
                memberContainer(),
                memberContainer(),
                memberContainer(),
                memberContainer(),
              ],
            )
          ],
        ));
  }

  Container memberContainer() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80),
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Center(child: FittedBox(child: Text('hkhjk'))),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black)),
          ),
          // SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }

  Container titleNName(title, name) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Center(child: FittedBox(child: Text('$title'))),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(child: FittedBox(child: Text('$name'))),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
