import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider_counter.dart';

class Counter3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter3"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter: ${Provider.of<Counter>(context).counter3}"),
            SizedBox(height: 20),
            FlatButton(
              child: Text("increment me"),
              onPressed: () {
                Provider.of<Counter>(context, listen: false).counter3++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
