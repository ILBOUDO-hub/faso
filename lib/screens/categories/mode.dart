import 'package:flutter/material.dart';
import 'package:faso/widgets/categoriesWidgets.dart';
import 'package:faso/widgets/itemsWidget.dart';

class Mode extends StatefulWidget {
  @override
  _ModeSate createState() => new _ModeSate();
}

class _ModeSate extends State<Mode> {

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
            Text('Article de mode',textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            ItemsWidget(),
          //  Annonces(),

          ],
        ),
      ),
      ),
    );
  }
}
