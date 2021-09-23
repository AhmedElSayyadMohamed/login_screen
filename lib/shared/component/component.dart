import 'package:flutter/material.dart';

/////////////// delfualt TextFormField ////////

Widget default_TextFormField({
  required TextEditingController? controller,
  required Widget? prefixIcon,
  Widget? suffixIcon,
  double radius = 50,
  required String? labelText,
  TextInputType? keyboardType,
  bool obscureText = false,
  required ValueChanged<String>? onFieldSubmitted,
  required ValueChanged<String>? onChange,
  FormFieldValidator<String>? validator,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscureText,
    style: TextStyle(color: Colors.blue),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      fillColor: Colors.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.blue, width: 2)),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: labelText,
    ),
    onFieldSubmitted: onFieldSubmitted,
    onChanged: onChange,
    validator: validator,
  );
}

/////////////////////////////////  default_MaterialButton //////

Widget default_MaterialButton({
  double height = 60,
  double width = 150,
  double Reduis = 0,
  Color color = Colors.blue,
  required String? ButtonText,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Reduis),
      color: color,
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: MaterialButton(
      child: Text(
        ButtonText!.toUpperCase(),
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    ),
  );
}
/////////////////////////////////
