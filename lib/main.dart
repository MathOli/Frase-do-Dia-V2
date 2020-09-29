import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String frase = "A frase aparecera aqui";
  int count = 0;
  List<String> frases = ["Os problemas são oportunidades para se mostrar o que sabe.","Nossos fracassos, às vezes, são mais frutíferos do que os êxitos.","Tente de novo. Fracasse de novo. Mas fracasse melhor"];


  void _frases(){
    setState(() {
      count++;
      int x = Random().nextInt(frases.length);
      frase = frases[x];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Frase do dia"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione para ver a frase do dia',
            ),
            Text(
              '$frase',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _frases,
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),

    );
  }


}
