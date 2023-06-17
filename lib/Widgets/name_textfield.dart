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
      validate(value);
      return null;
    },
    onChanged: (value) {
      onChange(value);
    },
  );
}
