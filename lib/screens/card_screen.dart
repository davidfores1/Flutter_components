import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(
              name:'¡Me voy de viaje!',
              imageUrl:
                  'https://www.lavanguardia.com/files/og_thumbnail/uploads/2018/06/15/5fa43d71a111f.jpeg'),
          SizedBox(height: 10),
          CustomCard2(
            name:'¡LLegue a mi destino!', 
            imageUrl:
                'https://growproexperience.com/_next/image/?url=https%3A%2F%2Fwp.growproexperience.com%2Fwp-content%2Fuploads%2F2022%2F06%2Fviajes-para-aprender-ingles.jpg&w=1920&q=75',
          ),
          SizedBox(height: 10),
          CustomCard2(
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
