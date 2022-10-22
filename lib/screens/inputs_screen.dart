import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inpust y Forms'),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children:const [
              CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Apellido', hintText: 'Apellido'),
              SizedBox(height: 30),

              CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', textInputType:TextInputType.emailAddress),
              SizedBox(height: 30),
      
              CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true),
              SizedBox(height: 30),
            ],
          ),
        ),
      )
    );
  }
}
