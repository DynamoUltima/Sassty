import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: ListWheelScrollView.useDelegate(
            itemExtent: 200,
            // physics: FixedExtentScrollPhysics(),
            diameterRatio: 4.5,
            // magnification: 1.5,
            // useMagnifier: true,
            offAxisFraction: 1.0,

            squeeze: 0.8,
            onSelectedItemChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            childDelegate: ListWheelChildBuilderDelegate(
                childCount: 7,
                builder: (context, index) {
                  return Container(
                    // height: 300,
                    width:screenWidth*0.7 ,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[200],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0)),
                    alignment: Alignment.center,
                    child: Center(
                      child: Text('Fashion',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                    ),
                  );
                })),
      ),
    );
  }
}

/*
Container(
               height: 400,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0)),
              alignment: Alignment.center,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Fashion'),
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.8,
               height: 00,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0)),
              alignment: Alignment.center,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Fashion'),
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.8,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0)),
              alignment: Alignment.center,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text('Fashion'),
                ),
              ),
            )
*/
