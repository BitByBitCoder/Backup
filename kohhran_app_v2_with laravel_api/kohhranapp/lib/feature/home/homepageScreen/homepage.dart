import 'package:flutter/material.dart';
import 'package:kohhranapp/feature/commette/screen/commeettee_listscreen.dart';
import 'package:kohhranapp/feature/commette/screen/commettee_screen.dart';
import 'package:kohhranapp/feature/inkhawmiPrograme/inkhawmProgrameScreen/inKhawmiPrograme.dart';
import 'package:kohhranapp/feature/inkhawmiPrograme/inkhawmProgrameScreen/inkhawmprogramePage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ramthar"),
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: const Color.fromARGB(255, 76, 74, 65)),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  carosel(context),
                  SizedBox(
                    width: 20,
                  ),
                  carosel(context),
                  SizedBox(
                    width: 20,
                  ),
                  carosel(context),
                ]),
          ),

          programe("Inkhawme Programe", context, InKhawmiPrograme()),
          //// card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                inkhawmeProgrameCard('Pathianni', context),
                inkhawmeProgrameCard('Nilai Zan', context),
                inkhawmeProgrameCard('Khristian Thalai Pawl', context)
              ],
            ),
          ),

          programe("Inkhawme Programe", context, CommeeteeListScreen()),
          SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile('Kohhran',
                          Icon(Icons.home, color: Color(0xff364BBA)), context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile(
                          'SundaySchool',
                          Icon(Icons.school, color: Color(0xff364BBA)),
                          context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile(
                          'Finance',
                          Icon(Icons.monetization_on, color: Color(0xff364BBA)),
                          context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //seconde row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile(
                          'Ramthar',
                          Icon(Icons.change_history, color: Color(0xff364BBA)),
                          context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile(
                          'Music',
                          Icon(
                            Icons.music_note,
                            color: Color(0xff364BBA),
                          ),
                          context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: committeeTile(
                          'BiBle Society',
                          Icon(
                            Icons.menu_book,
                            color: Color(0xff364BBA),
                          ),
                          context),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CommeetteeScreen(title: 'Sunday School')),
                );
              },
              child: Text('hell'))
        ],
      ),
    );
  }

  Container committeeTile(String title, Icon icon, BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CommeetteeScreen(title: 'Sunday School')));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
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
          height: 100,
          child: Center(
              child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon, Text('$title')],
            ),
          )),
        ),
      ),
    );
  }

  Container carosel(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.0),
        // Example color
      ),
      width: MediaQuery.of(context).size.width * .90,
      height: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          'assets/images/church.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Padding programe(String title, BuildContext context, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 5),
                    blurRadius: 10),
              ],
              border: Border.all(
                color: const Color.fromARGB(255, 0, 0, 0),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(13),
            ),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => screen)),
              child: Row(children: [
                Text('more'),
                Icon(
                  Icons.more_horiz,
                  size: 24.0,
                  color: Colors.black,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Container inkhawmeProgrameCard(String title, BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (constext) => InkhawmProgramePage())),
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
              backgroundImage: AssetImage('assets/images/pci.jpg'),
              backgroundColor: Colors.purple,
            ),
            title: Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
