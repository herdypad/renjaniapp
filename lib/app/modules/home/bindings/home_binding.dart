import 'package:get/get.dart';
import 'package:renjani/app/modules/home/controllers/beranda_controller.dart';
import 'package:renjani/app/modules/home/controllers/gallery_controller.dart';
import 'package:renjani/app/modules/home/controllers/rank_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<HomeController>(HomeController.new)
      ..lazyPut<BerandaController>(BerandaController.new)
      ..lazyPut<RankController>(RankController.new)
      ..lazyPut<GalleryController>(GalleryController.new);
  }
}
