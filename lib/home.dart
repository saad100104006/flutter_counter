import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './counter1.dart';
import './counter2.dart';
import './counter3.dart';
import './provider_counter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// index of current selected tab
  /// default to o
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Counter1",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Counter2",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Counter3",
          ),
        ],
        onTap: (index) {
          if (_currentIndex != index) {
            // current index is not the same as tapped index
            // so update the state
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          // increment the counter of the shown page only
          Provider.of<Counter>(context, listen: false)
              .incrementCounterFromGeneralButton(_currentIndex);
        },
      ),
      body: getCurrentCounterPage(),
    );
  }

  /// returns the current oage to display on the screen based on the selected option from bottom bar
  Widget getCurrentCounterPage() {
    if (_currentIndex == 0) return Counter1();
    if (_currentIndex == 1) return Counter2();

    return Counter3();
  }
}
