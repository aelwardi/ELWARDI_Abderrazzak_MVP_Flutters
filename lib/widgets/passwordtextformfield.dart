import 'package:flutter/material.dart';
class PasswordTextFormField extends StatelessWidget {
  bool obserText;
  final TextEditingController controller;
  final Function validator;
  final Function onTap;
  final String name;

  PasswordTextFormField({
    String this.name,
    Function this.validator,
    bool this.obserText,
    Function this.onTap,
    TextEditingController this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obserText,
      validator: (value){
        if(value == "" ){
          return "Please Fill Password";
        }
        else if(value.length < 8){
          return "Password Is Too short";
        }
        return "";
      },
      decoration: InputDecoration(
        hintText: "Password",
        suffixIcon: GestureDetector(
          onTap: (){
            obserText = !obserText;
            FocusScope.of(context).unfocus();
          },
          child: Icon(
            obserText == true? Icons.visibility: Icons.visibility_off,
            color: Colors.black,
          ),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
