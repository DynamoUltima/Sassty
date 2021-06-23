import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:16 ),
        child: Column(
          children: [
             SizedBox(
              height: screenHeight * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Signup',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)
            ],),
            SizedBox(
              height: 50,
            ),
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Full name',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 20,
            ),
             
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.9,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
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
            SizedBox(
              height: 20,
            ),
          
            Spacer()
          ],
        ),
      ),
    );
  }
}