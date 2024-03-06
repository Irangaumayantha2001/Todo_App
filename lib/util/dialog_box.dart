// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key,required this.controller,required this.onCancel, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 227, 204, 174),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller ,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add your Task"),
            ),

            //button save & cancel
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              MyButton(name: "Save", onPressed: onSave),
              const SizedBox(
                width: 5,
              ),
              MyButton(name: "Cancel", onPressed: onCancel)
            ])
          ],
        ),
      ),
    );
  }
}
