import 'package:flutter/material.dart';

import '../../presentation/weather/detail_screen.dart';
import '../../presentation/weather/location_search_screen.dart';
import 'route_names.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.locationSearchScreen:
        return _getPageRoute(const LocationSearchScreen(), settings);
      case RouteNames.detailScreen:
        return _getPageRoute(const DetailScreen(), settings);
      default:
        return _getPageRoute(const LocationSearchScreen(), settings);
    }
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => child, settings: settings);
}
