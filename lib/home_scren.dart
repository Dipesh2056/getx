import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_scren.dart';
import 'package:getx/image_picker_contoller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Getx',
            style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [],
        ));
  }
}
