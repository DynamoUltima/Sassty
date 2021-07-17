import 'package:flutter/material.dart';
import 'package:sassty/pages/home.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your orders',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 1,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Icon(
              Icons.clear,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Container(
          child: ListView.separated(
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  onTap: (){},
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text('#1236548300012',style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text('In transit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                  subtitle: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('Estimated Delivery'), Text('15.07.2021'),],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, index) {
                return Divider();
              },
              itemCount: 4)),
    );
  }
}
