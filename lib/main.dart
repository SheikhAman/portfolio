import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheikh_aman/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDIC6VASngvuLRYPrhhET4AZsP-0MjTx00",
            authDomain: "sheikh-aman.firebaseapp.com",
            projectId: "sheikh-aman",
            storageBucket: "sheikh-aman.appspot.com",
            messagingSenderId: "392950779383",
            appId: "1:392950779383:web:25ac3f2b358b0e12aff2f2",
            measurementId: "G-6VVFK141S4"),);
  } else {
    GoogleFonts.config.allowRuntimeFetching = false;
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheikh Aman Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LayoutBuilder(
      //   builder: (context, constraints) {
      //     if (constraints.maxWidth > 800) {
      //       return LandingPageWeb();
      //     } else {
      //       return LandingPageMobile();
      //     }
      //   },
      // ),
      initialRoute: '/',
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
    );
  }
}
