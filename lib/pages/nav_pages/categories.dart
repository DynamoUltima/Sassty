import 'dart:ui';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';
import 'package:sassty/pages/nav_pages/category_pages/category_details.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var _selectedIndex = 0;
  final _scrollController = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: ClickableListWheelScrollView(
          scrollController: _scrollController,
          itemHeight: 200,
          itemCount: 7,
          onItemTapCallback: (index) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoryDetails()));
            print("onItemTapCallback index: $index");
          },
          child: ListWheelScrollView.useDelegate(
            controller: _scrollController,
            itemExtent: 200,
            physics: FixedExtentScrollPhysics(),
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
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[200],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0)),
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        'Fashion ' + index.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
