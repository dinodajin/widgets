import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: buildAppBar(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Adding some padding between the AppBar and the menu title
            SizedBox(height: 20),
            // Menu title
            Text(
              'Menu',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Menu table
            buildMenuTable(),
          ],
        ),
      ),
    ),
  );
}

AppBar buildAppBar() {
  return AppBar(
    title: Center(
      child: Text(
        "바둑이 까페",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.normal, color: Colors.purple),
      ),
    ),
    backgroundColor: Colors.yellow,
    elevation: 2.0,
  );
}

Widget buildMenuTable() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.black),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Coffee',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hot',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ice',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('에스프레소'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '3.0',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '3.5',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('카페라떼'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '4.0',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '4.5',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('프라푸치노'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '5.0',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '5.5',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
