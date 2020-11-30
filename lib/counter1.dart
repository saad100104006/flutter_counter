import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider_counter.dart';

class Counter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter1"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter: ${Provider.of<Counter>(context).counter1}"),
            SizedBox(height: 20),
            FlatButton(
              child: Text("increment me"),
              onPressed: () {
                Provider.of<Counter>(context, listen: false).counter1++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
