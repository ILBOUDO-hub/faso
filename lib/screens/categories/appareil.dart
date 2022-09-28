import 'package:flutter/material.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';

class Appareil extends StatefulWidget {
  @override
  _AppareilSate createState() => new _AppareilSate();
}

class _AppareilSate extends State<Appareil> {

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
            Text('Vos appareils',textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            ItemsWidget(),
          //  Annonces(),

          ],
        ),
      ),
      ),
    );
  }
}
