import 'package:flutter/material.dart';
import 'package:sassty/pages/auth_pages/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.2,
            ),
            SizedBox(
              child: Image.asset(
                'assets/sassty.png',
              ),
              width: 100,
            ),
            SizedBox(
              height: 50,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: screenWidth * 0.45,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'signup',
                      style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
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
                SizedBox(
                  width: screenWidth * 0.45,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'signin',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
