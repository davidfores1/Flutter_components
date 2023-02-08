import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _SliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 400,
              value: _SliderValue,
              onChanged: (value){
               _SliderValue = value;
               setState(() {
          
               });
              }
              ),
              Image(
                image: NetworkImage('https://www.pngarts.com/files/2/Batman-PNG-Picture.png'),
                fit: BoxFit.contain,
                width: _SliderValue,
                )
          ],
        ),
      )
    );
  }
}