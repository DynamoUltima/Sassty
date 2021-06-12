import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.8,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 10,
                // itemExtent: 100,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Container(
                        child: Image.network(
                            'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                      ),
                      title: Text('Addidas'),
                      subtitle: Text('GH 4.99'),
                      trailing: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: IconButton(
                              icon: Icon(Icons.delete_rounded),
                              onPressed: () {})),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
