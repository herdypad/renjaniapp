import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renjani/app/modules/home/componet/branda_slider_header.dart';

import '../componet/beranda_footer.dart';
import '../componet/branda_content_main.dart';
import '../controllers/beranda_controller.dart';

class TabBeranda extends GetView<BerandaController> {
  const TabBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              BerandaSliderHeader(),
              BerandaContentMain(),
              BerandaFooter()
            ],
          ),
        ),
      ),
    );
  }
}
