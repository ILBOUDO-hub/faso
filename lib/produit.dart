import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';

class Produit extends StatefulWidget {
  @override
  _ProduitState createState() => new _ProduitState();
}

class _ProduitState extends State<Produit> {
  // Widget imagecarousel = Container(
  //   height: 400,
  //   width: 150,
  //   child: Carousel(
  //     boxFit: BoxFit.fill, 
  //     images: [
  //       AssetImage("assets/images/audi2.jpg"),
  //       AssetImage("assets/images/audi2.jpg"),
  //       AssetImage("assets/images/audi2.jpg"),
  //       AssetImage("assets/images/audi2.jpg"),
  //       AssetImage("assets/images/audi2.jpg"),
  //       AssetImage("assets/images/audi2.jpg"),
  //     ]
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Article'),
              centerTitle: true,
              titleTextStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              backgroundColor: Colors.brown,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.maybePop(context),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Container(
                  //   height: 300,
                  //   child: imagecarousel,
                  // ),
                  

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Voiture',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Prix: 100\$',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Taille: 200 cm\n\nCouleur: Rouge\n\nDescription: Belle voiture rouge Ferrari électrique, robuste avec un confort pour ces 5 passagers.\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Contact: +226 62825040 / 57579362',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SizedBox(
                  //   height: size.height,
                  //   child: Stack(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(top: size.height * 0.3),
                  //         padding: EdgeInsets.only(
                  //           top: size.height * 0.12,
                  //           left: size.height * 0.12,
                  //           right: size.height * 0.12,
                  //         ),
                  //         height: 500,
                  //         decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(24),
                  //             topRight: Radius.circular(24),
                  //           ),
                  //         ),
                  //         child: Column(
                  //           children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 //
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: <Widget>[
                  //             SizedBox(height: 10,),
                  //             Text(
                  //               'Aristocratic Hand Bag',
                  //               style: TextStyle(color: Colors.black, fontSize: 20),
                  //             ),
                  //             Text('Sac a main', style: TextStyle(
                  //               color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
                  //             ),
                  //             SizedBox(height: 20,),
                  //             Row(
                  //               children: <Widget>[
                  //                 RichText(
                  //                   text: TextSpan(
                  //                     children: [
                  //                       TextSpan(
                  //                         text: 'Price\n',
                  //                       ),
                  //                       TextSpan(
                  //                         text: '\$ 100',
                  //                         style: TextStyle(
                  //                           color: Colors.black,
                  //                           fontWeight: FontWeight.bold,
                  //                           fontSize: 20,
                  //                         )
                  //                       )
                  //                     ]
                  //                   )
                  //                 ),
                  //                 SizedBox(width: 30.0,),
                  //                 Expanded(
                  //                   child: Image.asset(
                  //                     "assets/images/audi2.jpg",
                  //                     fit: BoxFit.fill,
                  //                   ),)
                  //               ],
                  //             )
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            )));
  }
}
