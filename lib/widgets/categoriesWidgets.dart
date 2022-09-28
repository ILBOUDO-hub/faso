import 'package:faso/screens/categories/mode.dart';
import 'package:flutter/material.dart';

class categoriesWidget extends StatefulWidget {
  @override
  _categoriesWidgetState createState() => new _categoriesWidgetState();
}

class _categoriesWidgetState extends State<categoriesWidget> {
  final commentaireController = TextEditingController();
  List <String> ListCategories =["Vêtement","Mode","Voiture","Accessoire","Immobilier","Téléphone"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for(int i=1; i<6; i++)
           // for(int j=1; j<6; j++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),),
                child: InkWell(
                          highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                  return Mode();
                })); 
        },
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            
                  ClipOval( 
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage("assets/categories/$i.jpg",),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                    Text(ListCategories[i], style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),)
                  ],
                ),
                ),


            ),
          ],
        ),
        
      );

  }
}

