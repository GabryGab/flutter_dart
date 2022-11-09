import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amsterdam',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Amsterdam'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Center(
        child: Text('Amsterdam'),
      )),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/amsterdam.jpg'),
                  width: 350,
                ),
                Container(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32,
                            right: 32,
                            top: 12,
                            bottom: 15), //apply padding to some sides only
                        child: Text(
                          'Amsterdam è una città capace di essere allo stesso tempo antica e moderna, artistica e commerciale, provinciale e cosmopolita. Il segreto, secondo molti, è la cultura protestante dei mercanti e dei marinai che, a partire dalla metà del ‘500, e poi per tutto il secolo successivo, resero ricchissima la città, facendone il crocevia di tutti i traffici commerciali tra il Mare del Nord, le Indie e le Americhe. La ricchezza individuale, però, aveva, e ha senso, solo se messa a disposizione della comunità. Una caratteristica, questa, che è un po’ la cifra dell’intero Nord Europa, fermo restando le specificità di ciascun paese. La città, come è noto, si sviluppa su oltre 100 canali, attraversati da 600 ponti che mettono in collegamento 90 isole. Ci si muove prevalentemente in bicicletta e coi mezzi pubblici che già da anni garantiscono una mobilità sostenibile a emissioni zero, dai taxi alle imbarcazioni che navigano lungo la cintura dei canali.',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.justify,
                        ))),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                    onPressed: () async {
                      await player.play(AssetSource('sounds/click.mp3'));
                    },
                    child: Container(
                      color: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const Text(
                        'Museo Van Gogh',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      await player.play(AssetSource('sounds/click.mp3'));
                    },
                    child: Container(
                      color: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const Text(
                        'Hotel in zona',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                  ),
                ]),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
