import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un viajero'),
            subtitle: Text('En ocasiones los viajes incluyen una serie de imprevistos que no dependen de nosotros. Para evitar que esto suceda, y que nuestro viaje sea mejor aún de lo esperado, existen una serie de recomendaciones que está bien tener en cuenta y aplicarlas.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {
                  
                },
                child: const Text('Cancelar')),
                TextButton(onPressed: () {
                  
                },
                child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}