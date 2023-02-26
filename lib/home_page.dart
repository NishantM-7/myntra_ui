// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import './insider_page.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final List<String> imageUrls = [
    'https://mir-s3-cdn-cf.behance.net/projects/404/a2c93d145187043.Y3JvcCw5ODAsNzY2LDAsMA.jpeg',
    'https://i.ytimg.com/vi/Mu82greZI4Q/maxresdefault.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJBtzw4fCq5iH0ACBFqpTMqQO133mjcviyA8eA4Wf0R9aXFT0RY6Vd11pxpEhrhTORY0M&usqp=CAU',
  ];

  final List<String> featureUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ-Tj6SzJ5TJGXvsl87jq51mCjyfwiFHy68g&usqp=CAU',
    'https://assets.myntassets.com/f_auto,q_auto:eco,dpr_1.3,w_247,c_limit,fl_progressive/assets/images/2022/12/9/b189ce44-9320-406e-ac55-597a0e67c4681670597383898-10DEC22-SB-EORS-MainPLATINUM-Brand-6.jpg',
    'https://assets.myntassets.com/f_auto,q_auto:eco,dpr_1.3,w_237,c_limit,fl_progressive/w_237,h_311,q_60,,dpr_2,fl_progressive/assets/images/2023/2/14/3e999399-769c-42ab-a863-61fe179e01de1676358529964-max-gold-rod.png'
  ];
  Widget buildImage(int index) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Image(
        image: NetworkImage(imageUrls[index]),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget buildIndicator(int activeIndex) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Center(
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: imageUrls.length,
          effect: JumpingDotEffect(
            dotWidth: 5,
            dotHeight: 5,
            activeDotColor: Colors.black54,
          ),
        ),
      ),
    );
  }

  final String logo =
      'https://cdn2.desidime.com/topics/photos/1026708/original/c5c6f538-6cb2-4f10-afd4-c696e32d2f2a1537625295072-logo-WO_tagline.png?1560872559';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        // leading: GestureDetector(child: Image(image: NetworkImage(logo))),
        title: GestureDetector(
          // height: 30,

          child: SizedBox(
            width: 60,
            child: Image(
              image: NetworkImage(logo),
              fit: BoxFit.contain,
            ),
          ),
          onTap: () => Navigator.pushNamed(context, InsiderPage.routeName),
        ),

        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 80, bottom: 10),
            alignment: Alignment.center,
            color: Colors.grey,
            child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.person,
                  size: 100,
                )),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            CarouselSlider.builder(
              itemCount: imageUrls.length,
              itemBuilder: (ctx, index, realIndex) {
                return buildImage(index);
              },
              options: CarouselOptions(
                  height: 280,
                  enableInfiniteScroll: false,
                  // pageSnapping: false,
                  reverse: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  }),
            ),
            buildIndicator(activeIndex),
            Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text(
                'FEATURED BRANDS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featureUrls.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 200,
                      child: Image(
                        image: NetworkImage(featureUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
