import 'package:get/get.dart';
import 'package:renjani/app/modules/home/model/berita_terbaru_m.dart';
import 'package:renjani/app/modules/home/model/event_terbaru_m.dart';
import 'package:renjani/app/modules/home/repo/beranda_repo.dart';
import 'package:renjani/utils/app_utils.dart';

class BerandaController extends GetxController {
  final TAG = "BerandaController : ";

  RxList<String> listFlashFoto = <String>[].obs;
  RxList<EventTerbaruM> listEventTerbaru = <EventTerbaruM>[].obs;
  RxList<BeritaTerbaruM> listBeritaTerbaru = <BeritaTerbaruM>[].obs;

  RxInt idSelect1 = 0.obs;
  RxInt statusEventBerita = 0.obs;

  //header variable
  RxInt currentIndex = 0.obs;

  RxBool isLoadHeader = false.obs;
  RxBool isLoadEvent = false.obs;
  RxBool isLoadBerita = false.obs;
  RxBool isLoadGalery = false.obs;

  @override
  void onInit() async {
    super.onInit();
    logSys(TAG);
    initData();
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
    final data = await BerandaRepo().getflashfoto();
    listFlashFoto(data);
    isLoadHeader(false);

    isLoadEvent(true);
    final dataEvent = await BerandaRepo().geteventterbaru();
    listEventTerbaru(dataEvent);
    isLoadEvent(false);

    isLoadBerita(true);
    final dataBerita = await BerandaRepo().getBeritabaru();
    listBeritaTerbaru(dataBerita);
    isLoadBerita(false);
  }
}
