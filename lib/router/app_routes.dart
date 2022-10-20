import 'package:flutter/material.dart';

import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.cabin),
    MenuOption(route: 'listview1', name: 'List 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'List 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.campaign_outlined),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimateScreen(), icon: Icons.play_circle_filled_outlined)
  ];

 
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

     Map<String, Widget Function(BuildContext)> appRoutes = {};

     for(final option in menuOption){

      appRoutes.addAll({option.route : (BuildContext context) => option.screen});

     }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const Listview1Screen(),
  //   'listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic>onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
