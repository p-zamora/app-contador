import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
  
}


class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(
      fontSize: 25.0,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold
    );

  int _conteo = 0;

  @override  
  Widget build(BuildContext context) {
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
            Text('Número de clicks:', style: _estiloTexto,),
            Text('$_conteo', style: _estiloTexto,)
          ],
        ),        
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),      
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30 ,),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add),tooltip: 'Incrementar',),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove), tooltip: 'Decrementar',),
        SizedBox(width: 5.0,),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero), tooltip: 'Resetear',),
      ],
    );

  }

  void _agregar(){
    setState(() => _conteo++);    
  }

  void _sustraer(){
    setState(() => {
      (_conteo == 0)?_conteo=0:_conteo--
    });
  }

  void _reset(){
    setState(() => _conteo = 0 );
  }
}