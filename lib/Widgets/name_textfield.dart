import 'package:flutter/material.dart';

Widget nameTextField(
    {required TextEditingController controller, required Function onChange}) {
  return TextField(
    controller: controller,
    onChanged: (value) {
      onChange(value);
    },
  );
}
