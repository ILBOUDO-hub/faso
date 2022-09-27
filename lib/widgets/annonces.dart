import 'package:flutter/material.dart';
import 'package:faso/constants/custom_text.dart';


class Annonces extends StatefulWidget {
  @override
  _AnnoncesState createState() => new _AnnoncesState();
}

class _AnnoncesState extends State<Annonces> {
  final commentaireController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          /*  appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.brown,
          elevation: 50,
          centerTitle: true,
          shadowColor: Colors.black.withOpacity(.5),
          title: Text('Mes annonces',
              style: TextStyle(
                  color: Colors.white.withOpacity(.7),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black.withOpacity(.8),
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ), */

        body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Déposer une annonce',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Déposer vos articles ici, en précisant les détailles.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Titre / Nom produit'),
              controller: commentaireController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Description'),
              controller: commentaireController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Prix'),
              controller: commentaireController,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Contact'),
              controller: commentaireController,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.camera_alt_rounded,
                    size: 50,
                  ),
                  onPressed: () {},
                ),
                const Text(
                  'Prendre une photo...',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              heroTag: 'tbnA',
              extendedPadding: EdgeInsets.all(100.0),
              label: const Text(
                'Valider',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.brown,
              onPressed: () {
              /*  Navigator.push(context,
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                })); */
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}

