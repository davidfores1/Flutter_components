import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _SliderValue = 100;
  bool _SliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _SliderValue,
            onChanged: _SliderEnable ? (value){
             _SliderValue = value;
             setState(() {});
            }
            :null
            ),

            Checkbox(
              value: _SliderEnable, 
              onChanged: (value){
               _SliderEnable = value ?? true;
               setState(() {
                 
               });
              }
            ),

            Switch(
              value: _SliderEnable,
              onChanged:(value) => setState(() {
                _SliderEnable = value;
              }),
            ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _SliderEnable, 
              onChanged:(value) => setState(() {
                _SliderEnable = value ?? true;
              }),
            ),

              SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _SliderEnable, 
              onChanged:(value) => setState(() {
                _SliderEnable = value;
              }),
            ),
            
            //Ver licencia que la aplicacion esta utilizando
            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://www.pngarts.com/files/2/Batman-PNG-Picture.png'),
                  fit: BoxFit.contain,
                  width: _SliderValue,
                  ),
              ),
            )
        ],
      )
    );
  }
}