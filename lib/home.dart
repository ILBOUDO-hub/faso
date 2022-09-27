import 'package:flutter/material.dart';
import 'package:faso/forum.dart';
import 'package:faso/boutique.dart';
import 'package:faso/produit.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: [
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 7),
              searchBar(),
              //Les catégories des articles
              //categoriesWidget(),
              SizedBox(height: _w / 20),
              groupOfCards(
                  'Prix: 15\$',
                  'Voiture',
                  'assets/images/ferrari2.jpeg',
                  RouteWhereYouGo(),
                  'Prix: 15\$',
                  'Voiture',
                  'assets/images/audi2.jpg',
                  RouteWhereYouGo()),
              groupOfCards(
                  'Prix: 15\$',
                  'Voiture',
                  'assets/images/bmw4.jpg',
                  RouteWhereYouGo(),
                  'Example Text',
                  'Example Text',
                  'assets/images/ford4.jpg',
                  RouteWhereYouGo()),
              groupOfCards(
                  'Example Text',
                  'Example Text',
                  'assets/images/ferrari4.jpg',
                  RouteWhereYouGo(),
                  'Prix: 15\$',
                  'Voiture',
                  'assets/categories/8.jpg',
                  RouteWhereYouGo()),
              groupOfCards(
                  'Example Text',
                  'Example Text',
                  'assets/categories/7.jpg',
                  RouteWhereYouGo(),
                  'Example Text',
                  'Example Text',
                  'assets/categories/6.jpg',
                  RouteWhereYouGo()),
              groupOfCards(
                  'Example Text',
                  'Example Text',
                  'assets/categories/5.jpg',
                  RouteWhereYouGo(),
                  'Example Text',
                  'Example Text',
                  'assets/categories/4.jpg',
                  RouteWhereYouGo()),
              groupOfCards(
                  'Example Text',
                  'Example Text',
                  'assets/categories/3.jpg',
                  RouteWhereYouGo(),
                  'Example Text',
                  'Example Text',
                  'assets/categories/2.jpg',
                  RouteWhereYouGo()),
            ],
          ),
          Container(
            color: Color(0xffF5F5F5),
           // Container pour la barre de recherche
            child: Container(
              alignment: Alignment.center,
              height: _w / 8.5,
              width: _w / 0.5, 
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: _w / 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(99),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontWeight: FontWeight.w600,
                      fontSize: _w / 22),
                  prefixIcon:
                      Icon(Icons.search,size: 30, color: Colors.black.withOpacity(.6)),
                  hintText: 'Rechercher un produit.....',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
         // settingIcon(),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget settingIcon() {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, _w / 10, _w / 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: _w / 8.5,
            width: _w / 8.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              tooltip: 'Settings',
              icon: Icon(Icons.settings,
                  size: _w / 17, color: Colors.black.withOpacity(.6)),
              onPressed: () {
                Navigator.of(context).push(
                  MyFadeRoute(route: RouteWhereYouGo(), page: PageSport()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, _w / 25, _w / 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*
          Container(
            alignment: Alignment.center,
            height: _w / 8.5,
            width: _w / 1.36,
            padding: EdgeInsets.symmetric(horizontal: _w / 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(99),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontWeight: FontWeight.w600,
                    fontSize: _w / 22),
                prefixIcon:
                    Icon(Icons.search,size: 30, color: Colors.black.withOpacity(.6)),
                hintText: 'Rechercher un produit.....',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
  
          
          ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
              // margin: EdgeInsets.symmetric(vertical:20, horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical:20, horizontal: 10),
                      child: Text('Categories', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF4C53A5))),
                    ),
                    categoriesWidget(),
                  ],
                ),
              ), 
            ],
          ), */

            SizedBox(
              //Code le widget des categories
              height: 58.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  categoriesWidget(),
                ],
              ),
            ),
  
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Récents",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
                Text(
                  "Voir plus",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14.0),
                ),
              ],
            ),
          ),
          //Widget pour les annonces premiums
          SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                for(int i=1; i<6; i++)
                
                    
    Container(
      margin: const EdgeInsets.all(2.0),
      width: 200.0,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/categories/$i.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0)),
    )
              
              ],
            ),
          ),
          SizedBox(height: _w / 100),
          /*Container(
            width: _w / 1.15,
            child: Text(
              'Nos articles',
              textScaleFactor: 1.4,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.7),
              ),
            ),
          ),*/

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Nos articles",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
                Text(
                  "Voir plus",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget groupOfCards(
      String title1,
      String subtitle1,
      String image1,
      Widget route1,
      String title2,
      String subtitle2,
      String image2,
      Widget route2) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          card(title1, subtitle1, image1, route1),
          card(title2, subtitle2, image2, route2),
        ],
      ),
    );
  }

  Widget card(String title, String subtitle, String image, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context)
              .push(MyFadeRoute(route: RouteWhereYouGo(), page: PageSport()));
        },
        child: Container(
          width: _w / 2.36,
          height: _w / 1.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: _w / 2.36,
                height: _w / 2.6,
                decoration: BoxDecoration(
                 // color: Color(0xff5C71F3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  // Images des articles à afficher
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                 // Code pour le nombre de photo.
                  width: 38,
                  margin: EdgeInsets.only(bottom: 4.0, right: 4.0),
                  padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.30),
                          borderRadius: BorderRadius.circular(10),
                        ),
                  child: Row(
                    children: [
                      Text('2', style: TextStyle(color: Colors.white),),
                      Icon(Icons.camera,color: Colors.white,),
                    ],
                  ),
                ),
                alignment: Alignment.bottomRight,
                /* child: Text(
                  'Add image here',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),*/ 
              ),
              Container(
                height: _w / 6,
                width: _w / 2.36,
                padding: EdgeInsets.symmetric(horizontal: _w / 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      textScaleFactor: 1.4,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      title,
                      textScaleFactor: 1.5,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // getItem(img) {
  //   return Container(
  //     margin: const EdgeInsets.all(2.0),
  //     width: 150.0,
  //     decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage("assets/images/audi2.jpg"),
  //           fit: BoxFit.cover,
  //         ),
  //         borderRadius: BorderRadius.circular(10.0)),
  //   );
  // }
}

class MyFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  MyFadeRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
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
          ),

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
                                size:15.0,
                                color: index == 4 ? Colors.grey : Colors.orange,
                                )).toList().cast<Widget>(),
                          ),

                      IconButton(
                        icon: const Icon(
                          Icons.person,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              textAlign: TextAlign.justify,
                            ),

                          const SizedBox(height: 5),

                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
            )
        ));
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
