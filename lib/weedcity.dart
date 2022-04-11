import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_focus_watcher/flutter_focus_watcher.dart';


class WeedCity extends StatefulWidget {
  const WeedCity({Key? key}) : super(key: key);

  @override
  State<WeedCity> createState() => _WeedCityState();
}

class _WeedCityState extends State<WeedCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weed City'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/smoke.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.transparent,
              BlendMode.darken,
             )
          )
        ),
        child: Column(
          children: const [
          Image(
            image: AssetImage('images/blunts.jpeg'),
            width: 150.0,
            height: 150.0,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Enter number of blunts',
                  border: OutlineInputBorder()),
                  cursorColor: Colors.white10,
                  //maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
          ),
          Image(
            image: AssetImage('images/cupcake.jpeg'),
            width: 150.0,
            height: 150.0,
            ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter the number of cupcakes',
                border: OutlineInputBorder()
              ),
              //maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
          ),
          Image(
            image: AssetImage('images/fullcake.jpeg'),
            width: 150.0,
            height: 150.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter quantity needed in "kg"',
                  border: OutlineInputBorder()
                ),
              ),
            )
        ]),
      ),
    );
  }
}
