import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final estiloTexto = new TextStyle(
      fontSize: 25.0,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold
    );

    final conteo = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 18.0,
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto,),
            Text('$conteo', style: estiloTexto,)
          ],
        ),        
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
        },
      ),      
    );
  }
}