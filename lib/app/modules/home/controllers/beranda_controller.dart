import 'package:get/get.dart';
import 'package:renjani/app/controllers/user_info_controller.dart';
import 'package:renjani/app/modules/home/model/berita_terbaru_m.dart';
import 'package:renjani/app/modules/home/model/event_terbaru_m.dart';
import 'package:renjani/app/modules/home/model/galery_terbaru_m.dart';
import 'package:renjani/app/modules/home/repo/beranda_repo.dart';
import 'package:renjani/utils/app_utils.dart';

class BerandaController extends GetxController {
  final TAG = "BerandaController : ";

  final cUserInfo = Get.find<UserInfoController>();

  RxList<String> listSliderFoto = <String>[].obs;
  RxList<EventTerbaruM> listEventTerbaru = <EventTerbaruM>[].obs;
  RxList<BeritaTerbaruM> listBeritaTerbaru = <BeritaTerbaruM>[].obs;
  RxList<GaleryTerbaruM> listGeleryTerbaru = <GaleryTerbaruM>[].obs;

  RxInt idSelect1 = 0.obs;
  RxInt statusEventBerita = 0.obs;

  //header variable
  RxInt currentIndex = 0.obs;

  RxBool isLoadHeader = true.obs;
  RxBool isLoadEvent = false.obs;
  RxBool isLoadBerita = false.obs;
  RxBool isLoadGalery = false.obs;

  @override
  void onInit() async {
    super.onInit();
    logSys(TAG);
    initData();
    cUserInfo.getDataUser();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> initData() async {
    isLoadHeader(true);
    // final data = await BerandaRepo().getflashfoto();
    // listFlashFoto(data);
    // isLoadHeader(false);

    isLoadEvent(true);
    final dataEvent = await BerandaRepo().geteventterbaru();
    listEventTerbaru(dataEvent);
    isLoadEvent(false);

    isLoadBerita(true);
    final dataBerita = await BerandaRepo().getBeritabaru();
    listBeritaTerbaru(dataBerita);
    isLoadBerita(false);

    isLoadGalery(true);
    final data = await BerandaRepo().getGalery();
    listGeleryTerbaru(data);
    isLoadGalery(false);
  }
}
