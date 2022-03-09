import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
