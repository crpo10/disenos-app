import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text('11°', style: estiloTexto),
          Text('miercoles', style: estiloTexto),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
            )),
      ),
    );
  }
}
