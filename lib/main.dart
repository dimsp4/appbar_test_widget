import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AppbarAsik());
}

class AppbarAsik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Text("Leading")
          ],
        ),
        actions: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Text("Action")
            ],
          )
        ],
        title: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 100,
              color: Colors.brown,
            ),
            Text("Title")
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              Text("Bottom")
            ],
          ),
        ),
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 350,
                  height: 250,
                  color: Colors.amber,
                ),
                Text("Flexible Space")
              ],
            )
          ],
        ),
      ),
    ));
  }
}
