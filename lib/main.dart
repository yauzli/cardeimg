import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de yaretzi'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //fin widget appbar[]
          ), //fin appbar
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://github.com/yauzli/imagenes/blob/main/IMG_8510.JPG?raw=true', 'yarezi cruz'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://i.pinimg.com/236x/ed/2f/ab/ed2fabcad1857569bad2a2a63347b94f.jpg', 'Emma Watson'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://i.pinimg.com/564x/e9/5b/c9/e95bc95253c169cbbc6d00d42c4646ac.jpg', 'bad bunny'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://github.com/yauzli/imagenes/blob/main/images%20(1).jpg?raw=true', 'tanjiro'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://i.pinimg.com/564x/2c/87/c0/2c87c0d0b616d401a0c0fd7a5009bee0.jpg', 'spiderman'),
                SizedBox(
                  height: 5.0,
                ),
                _items('https://github.com/yauzli/imagenes/blob/main/187681901_318794656531936_4569452616795709942_n.jpg?raw=true', 'alfredito'),
                SizedBox(
                  height: 5.0,
                ),
              ], //fin de widget del list view[]
            ), //fin de listview
          ), //fin de container
        ) //fin de scaffold
        ); //fin de materialapp
  } //fin de widget en mitarjetaapp

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.amber[50],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('lorem ipsum dolor sit amet consectetur adipiscing elit', style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //fin de clase mitarjetaapp
