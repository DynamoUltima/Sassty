import 'package:flutter/material.dart';
import 'package:sassty/pages/auth_pages/login.dart';
import 'package:sassty/pages/nav_pages/account_pages/payment.dart';
import 'package:sassty/pages/nav_pages/account_pages/wish_list.dart';
import 'package:sassty/pages/order_pages/order_history.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: screenHeight,
          child: ListView(
            shrinkWrap: true, 
            children: [
            ListTile(
              dense: true,
              leading: Text(
                'Full name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'Sassty Ecomm',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400),
              ),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'sassty@gmail.com',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400),
              ),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Text(
                'Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                'East Legon banana st',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400),
              ),
            ),
            Divider(),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
              },
              contentPadding: EdgeInsets.only(right: 8, left: 16),
              dense: true,
              leading: Text(
                'Payment',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Visa *** **** **** 6280',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                    },
                  )
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WishList()));
              },
              contentPadding: EdgeInsets.only(right: 8, left: 16),
              dense: true,
              leading: Text(
                'Wishlist',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '5',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.only(right: 8, left: 16),
              dense: true,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OrderHistory()));
              },
              leading: Text(
                'My Orders',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '3 in transit',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: screenHeight * 0.3,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 2.5,
                  ),
                  child: Text(
                    'Log out',
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
                          borderRadius: BorderRadius.circular(9.0))),
                ),
              ),
            )
          ])),
    );
  }
}
