import 'package:flutter/material.dart';
import 'package:sheikh_aman/common/blog.dart';
import 'package:sheikh_aman/mobile/about_mobile.dart';
import 'package:sheikh_aman/mobile/contact_mobile.dart';
import 'package:sheikh_aman/mobile/landing_page_mobile.dart';
import 'package:sheikh_aman/mobile/works_mobile.dart';
import 'package:sheikh_aman/web/about_web.dart';
import 'package:sheikh_aman/web/contact_web.dart';
import 'package:sheikh_aman/web/landing_page_web.dart';
import 'package:sheikh_aman/web/works_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return LandingPageWeb();
                } else {
                  return LandingPageMobile();
                }
              },
            );
          },
          settings: settings,
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) {
            return LayoutBuilder(
              builder: (_, constraints) {
                if (constraints.maxWidth > 800) {
                  return ContactWeb();
                } else {
                  return ContactMobile();
                }
              },
            );
          },
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) {
            return LayoutBuilder(
              builder: (_, constraints) {
                if (constraints.maxWidth > 800) {
                  return AboutWeb();
                } else {
                  return AboutMobile();
                }
              },
            );
          },
          settings: settings,
        );

      case '/works':
        return MaterialPageRoute(
          builder: (_) {
            return LayoutBuilder(
              builder: (_, constraints) {
                if (constraints.maxWidth > 800) {
                  return WorksWeb();
                } else {
                  return WorksMobile();
                }
              },
            );
          },
          settings: settings,
        );
      case '/blog':
        return MaterialPageRoute(
          builder: (_) {
            return Blog();
          },
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return LandingPageWeb();
                } else {
                  return LandingPageMobile();
                }
              },
            );
          },
        );
    }
  }
}
