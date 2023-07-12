import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:renjani/app/modules/user_profile/controllers/user_profile_controller.dart';
import 'package:renjani/themes.dart';

class EditProfilePhotoBottomSheet extends GetView<UserProfileController> {
  const EditProfilePhotoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Edit Photo',
          style: mediumText12,
        ),
        verticalSpace(Insets.med),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 88.w,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.editFrofile
                          .changePhotoProfile(ImageSource.camera);
                      Get.back();
                    },
                    padding: EdgeInsets.zero,
                    icon: SizedBox.square(
                      dimension: 55.w,
                      child: Image.asset(
                        'assets/icons/ic_camera2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  verticalSpace(Insets.sm),
                  Text('Camera'.tr, style: mediumText11),
                ],
              ),
            ),
            SizedBox(
              width: 88.w,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.editFrofile
                          .changePhotoProfile(ImageSource.gallery);
                      Get.back();
                    },
                    padding: EdgeInsets.zero,
                    icon: SizedBox.square(
                      dimension: 55.w,
                      child: Image.asset(
                        'assets/icons/ic_gallery.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  verticalSpace(Insets.sm),
                  Text('Gallery', style: mediumText11),
                ],
              ),
            ),
            SizedBox(
              width: 88.w,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.editFrofile.removePhotoProfile();
                    },
                    padding: EdgeInsets.zero,
                    icon: SizedBox.square(
                      dimension: 55.w,
                      child: Image.asset(
                        'assets/icons/ic_remove.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  verticalSpace(Insets.sm),
                  Text('Remove Photo', style: mediumText11),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
