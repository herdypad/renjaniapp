import 'package:get/get.dart';

class GalleryController extends GetxController {
  RxInt lenkList = 8.obs;
  RxInt limitList = 20.obs;
  RxBool isLoad = false.obs;
  RxBool isLoadMore = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<bool> loadMore() async {
    print("onLoadMore");
    if (lenkList.value <= 50) {
      isLoad(true);
      await Future.delayed(const Duration(seconds: 0, milliseconds: 1000));
      lenkList(lenkList.value + 10);
      isLoad(false);
    } else {
      isLoadMore(false);
    }
    return true;
  }
}
