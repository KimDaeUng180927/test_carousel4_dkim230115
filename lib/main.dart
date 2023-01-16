import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './image_screen.dart';

void main() => runApp(MaterialApp(home: Demo()));

class Demo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
//        height: 345.0,
        child: CarouselSlider(
              options: CarouselOptions(
                height: 240,
                autoPlay: true,
                //            enlargeCenterPage:true,
                //            enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 2),
//                onPageChanged: (index, reason) =>
//                    setState(() => activeIndex = index),
              ),
          items: [
          'https://kdukim0125.cafe24.com/event/001.png',
          'https://kdukim0125.cafe24.com/event/002.png',
          'https://kdukim0125.cafe24.com/event/003.png',
          'https://kdukim0125.cafe24.com/event/004.png',
          'https://kdukim0125.cafe24.com/event/005.png',
          'https://kdukim0125.cafe24.com/event/006.png',
          'https://kdukim0125.cafe24.com/event/007.png',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fill),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(i),
                            ),
                          );
                        }));
              },
            );
          }).toList(),
        ));

    return Scaffold(
      body: new Column(
        children: <Widget>[
          image_carousel,
        ],
      ),
    );
  }
}
