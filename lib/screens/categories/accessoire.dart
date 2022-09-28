import 'package:flutter/material.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';

class Accessoire extends StatefulWidget {
  @override
  _AccessoireSate createState() => new _AccessoireSate();
}

class _AccessoireSate extends State<Accessoire> {

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
            Text('Vos accessoires',textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            ItemsWidget(),
          //  Annonces(),

          ],
        ),
      ),
      ),
    );
  }
}
