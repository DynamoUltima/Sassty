import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      child: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.1),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: Offset(0, 3), // changes position of shadow
            //   ),
            // ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Your Bag',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        'you have 3 items in your bag',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: screenHeight * 0.8,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 3,
                    );
                  },
                  itemCount: 10,
                  // itemExtent: 100,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 16),
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    scale: 2,
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Addidas',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    Text(
                                      'GH 44',
                                    ),
                                    Container(
                                      child: CustomNumberPicker(
                                        initialValue: 1,
                                        maxValue: 1000000,
                                        minValue: 0,
                                        step: 1,
                                        onValue: (value) {
                                          print(value.toString());
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: IconButton(
                                    icon: Icon(Icons.delete_rounded),
                                    onPressed: () {}),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Order Amount:',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'GHC 152',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Your total amount of Ddscount:',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'GHC 55',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 2.5,
                      ),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      // textStyle:MaterialStateProperty.all(TextStyle(color: Colors.white)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
ListTile(
                      isThreeLine: true,
                      leading: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 16),
                        height:550,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            scale: 2,
                            fit: BoxFit.fitHeight,
                            image:NetworkImage('https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),),
                        ),
                        
                      ),
                      title: Text('Addidas'),
                      subtitle: Text('GH 4.99'),
                      trailing: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: IconButton(
                              icon: Icon(Icons.delete_rounded),
                              onPressed: () {}),),
                    ),
*/
