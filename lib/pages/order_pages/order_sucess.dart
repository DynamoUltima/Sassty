import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderSucessPage extends StatefulWidget {
  const OrderSucessPage({Key? key}) : super(key: key);

  @override
  _OrderSucessPageState createState() => _OrderSucessPageState();
}

class _OrderSucessPageState extends State<OrderSucessPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Success',style: TextStyle(color: Colors.black,fontSize: 24),),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1,
        actions: [
          Icon(Icons.clear,color: Colors.grey,)

        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              SvgPicture.asset(
                'assets/happy-emoji.svg',
                width: 80,
                color: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Congratulations',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              Text(
                'Your order is accepted',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Your items are on the way',style: TextStyle(color: Colors.grey,fontSize: 22),),
              Text('and should arrive shortly',style: TextStyle(color: Colors.grey,fontSize: 22),),
              SizedBox(height: 20),
              SizedBox(
                width: screenWidth * 0.7,
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 2.5,
                    ),
                    child: Text(
                      'Track your order',
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
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
