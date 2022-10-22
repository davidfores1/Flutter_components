import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues ={
      'first_name': 'David',
      'last_name' : 'Forero',
      'email'     : 'david@hotmail.es',
      'password'  : '123456',
      'role'      : 'Admin' 
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inpust y Forms'),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario'),
                const SizedBox(height: 20),
          
                const CustomInputField(labelText: 'Apellido', hintText: 'Apellido'),
                const SizedBox(height: 20),
          
                const CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', textInputType:TextInputType.emailAddress),
                const SizedBox(height: 20),
                
                const CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true),
                const SizedBox(height: 20),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()){
                       print('Formulario no válido');
                       return;
                    }
                   },
                  child: const SizedBox(
                    width: double.infinity,
                    child:Center(child: Text('Guardar'))
                    )
                  )
              ],
            ),
          ),
        ),
      )
    );
  }
}
