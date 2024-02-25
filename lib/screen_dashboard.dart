import 'package:all_assighment/database/screendashboard.dart';
import 'package:flutter/material.dart';

import 'api/prayer.dart';
import 'hive/home_screen.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Dashboard',
          style: TextStyle(fontFamily: 'YourCustomFont', fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [

        ],
      ),
      body: Container(
        color: Colors.limeAccent,
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const ApiPrayers()));
              },
              icon: Icon(Icons.api_sharp),
              label: Text('Prayer Time Dashboard'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                onPrimary: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const SQFSCREEN()));
              },
              icon: Icon(Icons.data_saver_on_sharp),
              label: Text('  SQFlite    Dashboard'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                onPrimary: Colors.white,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const HomeScreen()));
              },
              icon: Icon(Icons.hive),
              label: Text('   HIVE    Dashboard'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
