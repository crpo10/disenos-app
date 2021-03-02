import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/5273670/pexels-photo-5273670.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('hojas selvaticas', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Por lo general son lindas', style: estiloSubtitulo)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text(
              '41',
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30.0,
          color: Colors.blue,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 0.0,
        ),
        child: Text(
            'Consequat incididunt et reprehenderit tempor laboris velit incididunt.Aliqua ullamco irure enim culpa nisi voluptate exercitation deserunt. Et culpa consequat proident cillum tempor. Ex in cupidatat nostrud sint incididunt consectetur reprehenderit ad fugiat anim occaecat ullamco amet. Id qui laboris velit duis qui Lorem voluptate quis aliqua qui id. Sint sint consequat ut ullamco reprehenderit in proident. Sint nulla labore ipsum nisi ea deserunt et ad cupidatat Lorem officia ea consequat.'),
      ),
    );
  }
}
