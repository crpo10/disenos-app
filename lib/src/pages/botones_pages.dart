import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botones(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNav(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6),
        end: FractionalOffset(0.0, 1.0),
        colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0),
        ],
      )),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 6.0,
        child: Container(
          height: 380.0,
          width: 380.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 127, 1.0)
              ])),
        ));

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNav(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined, size: 30.0),
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            label: (''),
          )
        ],
      ),
    );
  }

  Widget _botones() {
    return Table(
      children: [
        TableRow(children: [
          _crearBoton(Colors.blue, Icons.border_all, 'General'),
          _crearBoton(Colors.purpleAccent, Icons.bus_alert, 'Bus'),
        ]),
        TableRow(children: [
          _crearBoton(Colors.pinkAccent, Icons.shop, 'Buy'),
          _crearBoton(Colors.orange, Icons.palette, 'Draw'),
        ]),
        TableRow(children: [
          _crearBoton(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
          _crearBoton(Colors.green, Icons.cloud, 'Grocery'),
        ]),
        TableRow(children: [
          _crearBoton(Colors.red, Icons.collections, 'photos'),
          _crearBoton(Colors.teal, Icons.help_outline, 'Help'),
        ])
      ],
    );
  }

  Widget _crearBoton(Color color, IconData icon, String texto) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 40.0,
                child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                texto,
                style: TextStyle(
                    color: color, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }
}
