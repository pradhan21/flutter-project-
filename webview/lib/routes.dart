import 'package:flutter/material.dart';
import 'package:webview/home.dart';

import 'routenames.dart';

class Routes {
 static Route<dynamic> generateRoute(RouteSettings settings) {
   switch (settings.name) {
     case RouteName.home_route:
       {return MaterialPageRoute(builder: (context) => Home());}
     
     default:
       { return MaterialPageRoute(builder: (context) {
           return Scaffold(
             body: Text('No Route Defined'),
           );
          }
        );
      }
    }
  }
}
