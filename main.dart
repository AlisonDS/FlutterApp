import 'package:flutter/material.dart';
import 'package:flutter/src/material/color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Enleve le "debug"
      darkTheme:
          ThemeData(accentColor: Colors.orange), //Change la couleur du bouton
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow, //Change la couleur de fond
      appBar: AppBar(
        titleSpacing: 30, //Proche ou non de la partie gauche
        centerTitle: true, //Pour centrer le titre
        titleTextStyle: TextStyle(
            fontSize: 30, //Taille de la police
            fontFamily: 'Arial', //Change le style de la police
            //Change la couleur du titre du texte de la barre
            color: //Change la couleur du titre du texte de la barre
                Colors
                    .orange), //Change la couleur du titre du texte de la barre
        elevation: 100, //Definit la taille de l'ombre de l'image
        scrolledUnderElevation:
            1, //Dans la suite du programme sera utilisé cette valeur
        // surfaceTintColor: Colors.blue, //Couleur s'il y a un matériel
        shadowColor: Colors.pink, //Couleur de l'élévation
        toolbarHeight: 120, //Definit la hauteur de la AppBar
        toolbarOpacity: 0.6, //Floutter la barre
        // bottomOpacity: 1, //Floutter le bouton de la appBar
        leading: Container(
          padding: EdgeInsets.all(9), //Tout à gauche
          color: Colors.pink, //tout le container en rose
          child: Text('DS Ali L3'), //Mettre un texte en haut à gauche, un logo
          // child: Image.asset('lib/images/1649089252882.png'),
          height: 100, //Largeur Hauteur du container
          width: 100,
        ),

        title: Text(widget.title),
        actions: [
          Icon(Icons.shopping_cart_checkout),
          Icon(Icons.search)
        ], //Met une icone alarme
        actionsIconTheme: IconThemeData(
            color: Colors.black,
            size: 50), //Change la couleur et la taille de l'icone
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Deplace verticalement
          crossAxisAlignment:
              CrossAxisAlignment.center, //Deplace horizontalement
          children: <Widget>[
            Container(
                alignment: Alignment
                    .center, //Met l'image a la position dmd dans le container
                color: Colors.orange, //coloris le container
                height: 200, //Largeur Hauteur du container
                width: 200,
                child: Image.asset(
                  'assets/images/Alison.jpg',
                  width: 100,
                  height: 100,
                )),
            // const Text(
            //   'Appuies ici : ',
            // ),
            const Text(
              'Appuies autant de fois que tu veux : ',
              style: TextStyle(color: Colors.blue, height: 10),
            ),
            if (0 < _counter && _counter <= 10)
              Text("Tu peux faire beaucoup mieux !"),
            // TextAlign: TextAlign.left,
            if (11 <= _counter && _counter <= 30) Text("Pas assez..."),
            if (31 <= _counter && _counter <= 50)
              Text(
                "Yeah ca commence a faire beaucoup",
              ),
            if (51 <= _counter && _counter <= 100) Text("Tu as gagné !"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Align(
              //heightFactor: 8,
              alignment: Alignment.center,
              child: Text(
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                'Salut comment tu vas ?',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
