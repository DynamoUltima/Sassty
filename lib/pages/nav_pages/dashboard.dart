import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sassty/pages/product_pages/product_details.dart';
import 'package:sassty/shared/carousel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            CarouselWidget(imgList: imgList),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(fontSize: 22, color: Colors.pink),
                  )
                ],
              ),
            ),
            newArrivalsMethod(),
            Divider(
              thickness: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What's Trending",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(fontSize: 22, color: Colors.pink),
                  )
                ],
              ),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: SizedBox(
                        height: 40,
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(imgList[1])),
                        )),
                    title: Text('VFA Boost'),
                    subtitle: Text('Back packs'),
                    trailing: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0))),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          'GH 53.00',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: SizedBox(
                        height: 40,
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(imgList[1])),
                        )),
                    title: Text('VFA Boost'),
                    subtitle: Text('Back packs'),
                    trailing: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0))),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          'GH 53.00',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: SizedBox(
                        height: 40,
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(imgList[1])),
                        )),
                    title: Text('VFA Boost'),
                    subtitle: Text('Back packs'),
                    trailing: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0))),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          'GH 53.00',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container newArrivalsMethod() {
    return Container(
      height: 450,
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage()));
                },
                child: new GridTile(
                  footer: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('T- shirt'),
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                            imgList[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                    // child: Image.network(imgList[index]),
                  ), //just for testing, will fill with image later
                ),
              ),
            );
          }),
    );
  }
}
