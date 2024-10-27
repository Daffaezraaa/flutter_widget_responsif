import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WebLayout(),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            color: Color(0xFF37474F),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Ini Sidebar',
                    style: TextStyle(color: Color(0xFFB0BEC5), fontSize: 24),
                  ),
                ),
                ListTile(
                  title: Text("Home", style: TextStyle(color: Color(0xFFB0BEC5))),
                ),
                ListTile(
                  title: Text("Profile", style: TextStyle(color: Color(0xFFB0BEC5))),
                ),
                ListTile(
                  title: Text("Settings", style: TextStyle(color: Color(0xFFB0BEC5))),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                color: Color(0xFF546E7A),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ini Header',
                      style: TextStyle(color: Color(0xFFECEFF1), fontSize: 24),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Color.fromARGB(255, 252, 253, 253),
                  child: Center(
                    child: Text(
                      'Di dalem ini adalahh konten',
                      style: TextStyle(fontSize: 32, color: Color(0xFF455A64)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
