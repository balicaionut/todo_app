import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/core/utils/extensions.dart';
import 'package:todo_app/app/modules/home/controller.dart';

class AddDialog extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: homeCtrl.formKey,
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.all(3.0.wp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.close),
              ),
              TextButton(
                  style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {},
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 14.0.sp),
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
          child: Text(
            'New Task',
            style: TextStyle(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.wp),
          child: TextFormField(
            controller: homeCtrl.editCtrl,
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!),
            )),
            autofocus: true,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your todo item';
              }
              return null;
            },
          ),
        )
      ]),
    ));
  }
}
