import 'dart:ui';

import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        backgroundColor: Color(0xffFFF8F6),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child:  AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xffFFF8F6),
              elevation: 0,
              flexibleSpace: Column(
                children: [
                   Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                ),
                                color: Color(0xff2D2727),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  iconSize: 26,
                                  icon: Icon(
                                    Icons.add,
                                    color: Color(0xff2D2727),
                                  ),
                                  onPressed: null),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                  iconSize: 26,
                                  icon: Icon(
                                    Icons.delete_outline,
                                    color: Color(0xff2D2727),
                                  ),
                                  onPressed: null),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text('Payment',textScaleFactor: 2.2,style: TextStyle(fontWeight:FontWeight.bold),),
                      )
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                 Row(
                   children: [
                     TabBar(
                        isScrollable: true,
                        indicatorWeight: 0.01,
                        labelColor: Color(0xff2D2727),
                        labelStyle:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                        unselectedLabelStyle: TextStyle(),
                        tabs: <Widget>[
                          Tab(
                            text: "Visa",
                          ),
                          Tab(
                            text: "Master Card",
                          ),
                          Tab(
                            text: "PayPal",
                          ),
                         
                        ],
                      ),
                   ],
                 ),
                 Divider(thickness: 2,),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          Container(
            height: 100,
            child: Center(
              child: Text(
                "Tab 1",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Center(
              child: Text(
                "Tab 2",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Center(
              child: Text(
                "Tab 3",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        
        ]),
      ),
    );
  }
}
