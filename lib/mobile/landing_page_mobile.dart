import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:sheikh_aman/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),

        // drawer
        endDrawer: DrawersMobile(),
        body: ListView(
          children: [
            // Intro, First section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/image_circle.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold("Hello I'm", 15.0),
                      ),
                      SansBold(
                        'Sheikh Aman',
                        40.0,
                      ),
                      SansBold(
                        'Flutter developer',
                        20.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans('info.skaman@gmail.com', 15.0),
                          Sans('+8801515631065', 15.0),
                          Sans('7, Protap Das Lane, Sutrapur, Dhaka', 15.0),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),

            // About me, Second section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold('About me', 35.0),
                  Sans(
                      "Hello I'm Sheikh Aman I specialize in flutter development.",
                      15.0),
                  Sans(
                      'I strive to ensure astounding performance with state of ',
                      15.0),
                  Sans('the art security for Android, Ios, Web, Mac, Linux',
                      15.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer('Flutter'),
                      tealContainer('Firebase'),
                      tealContainer('Android'),
                      tealContainer('Windows'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),

            // Third section What I do?

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold('What I do?', 35.0),
                AnimatedCard(
                  imagePath: 'assets/webL.png',
                  text: 'Web development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: 'assets/app.png',
                  text: 'App development',
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: 'assets/firebase.png',
                  text: 'Back-end development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 60.0,
                ),

                // Contact Forth section
                ContactFormMobile(),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
