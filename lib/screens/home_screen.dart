import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOption;

    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter')
        ),
        body: ListView.separated(
          itemBuilder: (context, i) =>ListTile(
            leading: Icon(menuOptions[i].icon, color: Colors.indigo),
            title: Text(menuOptions[i].name),
            onTap:(){
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );
              Navigator.pushNamed(context, menuOptions[i].route);
            }, 
          ),
          separatorBuilder: (_, index) => const Divider(),
          itemCount: menuOptions.length,
        ), 
      );
  }
}