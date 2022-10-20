import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
       child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage('https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'), placeholder: AssetImage('assets/jar-loading.gif'),
            )
        ],
       ),
    );
  }
}