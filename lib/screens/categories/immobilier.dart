import 'package:flutter/material.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';

class Immobilier extends StatefulWidget {
  @override
  _ImmobilierSate createState() => new _ImmobilierSate();
}

class _ImmobilierSate extends State<Immobilier> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            categoriesWidget(),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 200,
              color: Color.fromARGB(255, 189, 132, 110),
              padding: EdgeInsets.all(10),
              child:  Text('Immobiliers',textAlign: TextAlign.center, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),            
            ItemsWidget(),
          //  Annonces(),

          ],
        ),
      ),
      ),
    );
  }
}
