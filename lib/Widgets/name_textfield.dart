import 'package:flutter/material.dart';

Widget nameTextField(
    {required TextEditingController controller,
    required Function onChange,
    required Function validate}) {
  return TextFormField(
    controller: controller,
    decoration: const InputDecoration(
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return "Field is Empty";
      }
      bool nameValid = RegExp(r"^[a-zA-Z]+$").hasMatch(value);

      if (!nameValid) {
        print("calling this method");
        return "Please enter valid Name";
      }
      return null;
    },
    onChanged: (value) {
      onChange(value);
    },
  );
}
