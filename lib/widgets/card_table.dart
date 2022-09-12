import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.pie_chart_outline_sharp,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pink,
            text: 'Transport',
            icon: Icons.car_rental,
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.cloud,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.purple,
            text: 'Bill',
            icon: Icons.movie,
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepOrange,
            icon: Icons.gamepad,
            text: 'Entertainment',
          ),
          _SingleCard(
            color: Colors.green,
            text: 'Grocery',
            icon: Icons.shop,
          )
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(
          color: Colors.white,
          icon,
          size: 35,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(color: color, fontSize: 18),
      )
    ]));
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
