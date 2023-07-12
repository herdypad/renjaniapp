import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../utils/app_utils.dart';
import '../../../../widgets/others/show_dialog.dart';
import '../../../controllers/user_info_controller.dart';

class EditProfileController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  RxString photoProfileEdited = ''.obs;
  RxBool isPhotoEdited = false.obs;

  final cFullName = TextEditingController();
  RxString fullName = ''.obs;
  bool isValidFullName = false;

  final cEmail = TextEditingController();

  final cDateOfBirth = TextEditingController();
  RxString dateOfBirth = ''.obs;
  bool isValidDateOfBirth = false;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

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

  Future<void> checkPermission(ImageSource source) async {
    final isCameraGranted = await Permission.camera.isGranted;
    if (isCameraGranted) {
      await changePhotoProfile(source);
    } else {
      showPopUpInfo(
        title: 'requestPermission'.tr,
        description: 'requestPermissionCamera'.tr,
        onPress: () async {
          Get.back();
          await requestCameraPermission(source);
        },
      );
    }
  }

  Future<void> requestCameraPermission(ImageSource source) async {
    final cameraStatus = await Permission.camera.request();
    if (cameraStatus.isGranted) {
      if (cameraStatus.isGranted) {
        await changePhotoProfile(source);
      }
    } else if (cameraStatus.isPermanentlyDenied || cameraStatus.isRestricted) {
      showPopUpInfo(
        title: 'information'.tr,
        description: 'requestPermissionCameraDenyPermanent'.tr,
        labelButton: 'OK',
        onPress: () async {
          Get.back();
          await openAppSettings();
        },
      );
    } else {
      showToast(message: 'requestPermissionCameraDeny'.tr);
    }
  }

  Future<void> changePhotoProfile(ImageSource source) async {
    final picker = ImagePicker();
    final file = await picker.pickImage(source: source);
    if (file != null) {
      photoProfileEdited(file.path);
      isPhotoEdited(true);
      // validateForm();
    }
  }

  void removePhotoProfile() {
    photoProfileEdited('');
    isPhotoEdited(true);
    // validateForm();
    Get.back();
  }

  Future<String> uploadPhoto() async {
    return "";

    // final fileName = basename(photoProfileEdited.value);

    // final ref = FirebaseStorage.instance.ref().child(fileName);
    // final task = ref.putFile(File(photoProfileEdited.value));
    // final snapshot = await task;
    // final url = await snapshot.ref.getDownloadURL();

    // return url;
  }

  Future<void> submit() async {
    try {
      AppUtils.dismissKeyboard();

      isLoading(true);

      var url = '';

      if (isPhotoEdited.value && photoProfileEdited.value.isNotEmpty) {
        url = await uploadPhoto();
      }

      await cUserInfo.getDataUser();

      await Future.delayed(const Duration(seconds: 1));

      isLoading(false);

      await Future.delayed(const Duration(milliseconds: 300));

      showPopUpInfo(
        title: 'success'.tr,
        description: 'updateProfileSuccess'.tr,
        onPress: () {
          Get
            ..back()
            ..back();
        },
      );
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
