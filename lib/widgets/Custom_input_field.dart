import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

final String? hintText;
final String? labelText;
final String? helperText;
final String? counterText;
final IconData? icon;
final IconData? suffixIcon;

  const CustomInputField({
    Key? key,  
    this.hintText,  
    this.labelText,  
    this.helperText,  
    this.counterText,
    this.icon, 
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('value: $value');
      } ,
      validator: (value) {
        if(value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //   ),
        // )

      ),
    );
  }
}