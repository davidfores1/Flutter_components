import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) =>ListTile(
            leading: const Icon(Icons.access_time_filled_outlined),
            title: const Text('Nombre de ruta'),
            onTap:(){
              // final route = MaterialPageRoute(
              //   builder: (context) => const Listview1Screen(),
              // );
              Navigator.pushNamed(context, 'alert');
            }, 
          ),
          separatorBuilder: (_, index) => const Divider(),
          itemCount: 10,
        ), 
      );
  }
}