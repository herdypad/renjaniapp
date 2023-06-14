// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/beranda_controller.dart';

class TabRank extends GetView<BerandaController> {
  const TabRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("rank"),
            ],
          ),
        ),
      ),
    );
  }
}
