import 'package:flutter/material.dart';
import 'package:sheikh_aman/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawersWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          // First Section
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold('Sheikh Aman', 55.0),
                    Sans('Flutter developer', 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans('info.skaman@gmail.com', 15.0),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans('+8801515631065', 15.0),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans('7, Protap Das Lane, Sutrapur, Dhaka', 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        'assets/image_circle.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second Section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/web.jpg',
                  height: widthDevice / 1.9,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('About me', 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        "Hello! I'm Sheikh Aman I specialize in flutter development.",
                        15.0),
                    Sans(
                        'I strive to ensure astounding performance with state of',
                        15.0),
                    Sans(
                        'the art security for Android, Ios, Web, Mac, Linux and Windows',
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer('Flutter'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('Firebase'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('Android'),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainer('Ios'),
                        SizedBox(
                          width: 7,
                        ),
                        tealContainer('Windows'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // Third Section
          Container(
            height: heightDevice / 1.30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold('What I do?', 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                        imagePath: 'assets/webL.png', text: 'Web development'),
                    AnimatedCard(
                      imagePath: 'assets/app.png',
                      text: 'App development',
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                        imagePath: 'assets/firebase.png',
                        text: 'Back-end development'),
                  ],
                )
              ],
            ),
          ),
          // Fourth Section

          Container(height: heightDevice / 1.1, child: ContactFormWeb()),
        ],
      ),
    );
  }
}
