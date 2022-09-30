import 'package:flutter/material.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';


import 'package:flutter/material.dart';
import 'package:faso/screens/forum.dart';
import 'package:faso/boutique.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:url_launcher/url_launcher.dart';


class Produit extends StatefulWidget {
  @override
  _ProduitSate createState() => new _ProduitSate();
}

class _ProduitSate extends State<Produit> {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        /*appBar: AppBar(
          title: const Text('Votre produit'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          backgroundColor: Colors.brown,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),*/
        body: Container(
            color: Colors.white,
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Card(
                elevation: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      //  width: 400,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: const BoxDecoration(
                        /*  borderRadius: BorderRadius.circular(200.0),
                border: Border.all(color: Colors.white),*/
                        color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage("assets/images/audi2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Audi A8",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          size: 15.0,
                                          color: index == 4
                                              ? Colors.grey
                                              : Colors.orange,
                                        )).toList().cast<Widget>(),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.person,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return TabBarClass();
                                  }));
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.favorite,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.share,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Taille: 200 cm\n\nCouleur: Rouge\n\nDescription: Belle voiture rouge Ferrari électrique, robuste avec un confort pour ces 5 passagers.\n",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FloatingActionButton.extended(
                                  extendedPadding: const EdgeInsets.all(15.0),
                                  label: const Text(
                                    'Ecrire',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  icon: Icon(Icons.message_outlined),
                                  backgroundColor: Colors.brown,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return MyApp();
                                    }));
                                  },
                                ),
                                const FloatingActionButton.extended(
                                    extendedPadding: EdgeInsets.all(15.0),
                                    label: Text(
                                      'Appeler',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    icon: Icon(Icons.phone),
                                    backgroundColor: Colors.brown,
                                    onPressed: _makingPhoneCall),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

_makingPhoneCall() async {
  const url = 'tel:+22661319367';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}