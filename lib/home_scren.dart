import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_scren.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
        children: [
          Card(
            child: ListTile(
              title: const Text('Get Dialogue Alert'),
              subtitle: const Text('dipesh'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete chat',
                    contentPadding: const EdgeInsets.all(20),
                    middleText: 'Are you sure you want to delete this chat?',
                    textConfirm: 'yes',
                    textCancel: 'No');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Get Bottom sheet'),
              subtitle: const Text('getx dialogue alert'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.light_mode,
                          // color: Colors.white,
                        ),
                        title: Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                          leading: Icon(
                            Icons.dark_mode,
                            // color: Colors.white,
                          ),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          })
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.snackbar('Dipesh', 'Hello',
      //         backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      //   },
      // ),
    );
  }
}
