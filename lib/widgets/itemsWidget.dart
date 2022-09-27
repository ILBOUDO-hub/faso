import 'package:flutter/material.dart';
import 'package:faso/screens/home.dart';
import 'package:faso/screens/home.dart';

import '../forum.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        double _w = MediaQuery.of(context).size.width;
    return GridView.count( 
      childAspectRatio: 0.815,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 9; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            decoration: BoxDecoration(
              // color: Color.fromARGB(255, 112, 17, 17),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Card(

      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context)
              .push(MyFadeRoute(route: RouteWhereYouGo(), page: PageSport()));
        },
        child: Container(
          width: _w / 2.36,
          height: _w / 8,
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
            ],
          ),
          child: Column(
            children: [
              Container(
               // width: _w / 2.36,
                height: _w / 2.6,
                decoration: BoxDecoration(
                  color: Color(0xff5C71F3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                  // Images des articles à afficher
                  image: DecorationImage(
                    image: AssetImage("assets/categories/$i.jpg",),
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
                          borderRadius: BorderRadius.circular(8),
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
                // color: Colors.amber,
                height: _w / 5.6,
                width: _w / 2.22,
                padding: EdgeInsets.symmetric(horizontal: _w / 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Voiture',
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
                      'Prix',
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
    )
          )


  
      ],
    );
  }
}
