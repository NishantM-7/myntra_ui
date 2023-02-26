import 'package:flutter/material.dart';

class InsiderPage extends StatelessWidget {
  InsiderPage({Key? key}) : super(key: key);

  static const routeName = '/insider';

  @override
  List<String> imageUrls = [
    'assets/images/myntrareward1.jpg',
    'assets/images/myntrareward2.jpg',
    'assets/images/myntrareward3.jpeg',
    'assets/images/myntrareward4.jpg',
    'assets/images/myntrareward5.jpg',
  ];

  Widget goalCriteriaTile(String arg1, String arg2, String arg3, String arg4,
      BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(
            image: AssetImage('assets/images/crown1.jpg'),
          )),
      title: Text(
        arg1,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      subtitle: Text(
        arg2,
        style: TextStyle(color: Color(0xFFc1c1c1)),
      ),
      trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              arg3,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              arg4,
              style: TextStyle(color: Color(0xFFc1c1c1), fontSize: 16),
            ),
          ]),
    );
  }

  Widget _benfitElement(String assetUrl, String displayText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            child: Image(
              image: AssetImage(assetUrl),
            ),
          ),
          Container(
            width: 280,
            padding: const EdgeInsets.all(15.0),
            child: Text(
              displayText,
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _titleBlock(String title) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: Text(
        title,
        style: TextStyle(
            color: Color(0xFFedab37),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget rewardContainer() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFF1a1c23),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage('assets/images/kiara.jpg')),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Become An INSIDER!',
                  style: TextStyle(
                      color: Color(0xFFedab36),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, right: 70, bottom: 10),
                child: Text(
                  'Join the Insider program and earn Supercoins with every purchase and much more. Log in now!',
                  style: TextStyle(
                      color: Color(0xFFa4a4a8),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, right: 70, bottom: 10),
                child: Text(
                  'New Goal Criteria',
                  style: TextStyle(
                      color: Color(0xFFfdfdfd),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color(0xFF282c3f)),
                child: Column(
                  children: [
                    goalCriteriaTile(
                        '₹ 0', 'You\'ve spent', '₹ 7000', 'Goal', context),
                    Divider(
                      color: Color(0xFFc1c1c1),
                    ),
                    goalCriteriaTile(
                        '0/5', 'Your Orders', '5', 'Goal', context),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: Text(
                  'Note: Recent purchases will only reflect in the goal once the return window is over.',
                  style: TextStyle(color: Color(0xFF6c6e79)),
                ),
              ),
              _titleBlock('Benefits Of Joining The Program'),
              _benfitElement(
                  'assets/images/Benefit1.jpg', 'Early Access to The Sales'),
              Divider(
                color: Color(0xFFc1c1c1),
                indent: 20,
                endIndent: 20,
                height: 1,
              ),
              _benfitElement('assets/images/benefit2.jpg',
                  'Insider Exclusive Rewards & Benefits'),
              Divider(
                color: Color(0xFFc1c1c1),
                indent: 20,
                endIndent: 20,
                height: 1,
              ),
              _benfitElement(
                  'assets/images/benefit3.jpg', 'Priority Customer Support'),
              _titleBlock('How does it work'),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  'Earn Supercoins with every purchase.\nYou can get upto 3 supercoins for every ₹100 spent.',
                  style: TextStyle(
                    color: Color(0xFFa4a4a8),
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Image(image: AssetImage('assets/images/howitworks.jpg')),
              ),
              _titleBlock('Rewards'),
              Container(
                padding: EdgeInsets.only(left: 20, top: 5, bottom: 10),
                child: Text(
                  'Use you Supercoins to get exciting rewards.',
                  style: TextStyle(
                    color: Color(0xFFa4a4a8),
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 300,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Color(0xFF1a1c23),
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              child: Image(
                                image: AssetImage(imageUrls[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 300,
                              color: Colors.white,
                              padding: EdgeInsets.all(20),
                              child: Text('Get Myntra Voucher Worth Rs.500'),
                            )
                          ],
                        ));
                  }),
                  itemCount: imageUrls.length,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Image.asset('assets/images/insiderlogo.jpg'),
                alignment: Alignment.center,
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
