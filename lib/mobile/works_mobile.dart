import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        // drawer
        endDrawer: DrawersMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 400.0,
                iconTheme: IconThemeData(color: Colors.black, size: 35.0),
                flexibleSpace: Image.asset(
                  'assets/works.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold("Works", 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: 'assets/portfolio_screenshot.PNG',
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold('Portfolio', 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        'Deployed on Android, Ios and Web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.',
                        15.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: 'assets/budget_screenshot.PNG',
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold('Budget App', 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        'Users can track there incomes and expenses list using this beautiful responsive app.It is deployed on Android, Ios and Web, the budget app project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.',
                        15.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
