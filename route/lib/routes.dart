import 'package:flutter/material.dart';
import 'package:route/pageone.dart';
import 'package:route/pagetwo.dart';

import 'nameroutes.dart';

class Routes {
 static Route<dynamic> generateRoute(RouteSettings settings) {
   switch (settings.name) {
     case RouteName.home_route:
       {return MaterialPageRoute(builder: (context) => PageOne(title: "hello"));}
     case RouteName.second_route:
       {return MaterialPageRoute(builder: (context) => Pagetwo(settings.arguments as Map));
       }
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
