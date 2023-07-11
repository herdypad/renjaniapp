import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:renjani/app/modules/home/controllers/gallery_controller.dart';
import 'package:renjani/utils/app_utils.dart';

import '../../../../themes.dart';

class TabGallery extends GetView<GalleryController> {
  const TabGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    bool cekGenap(int number) {
      logSys("iasndasnda" + number.toString());
      if (number % 2 == 0) {
        return true;
      }
      return false;
    }

    return Obx(() => Scaffold(
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 37,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                          color: primaryColor1.withOpacity(0.5),
                          spreadRadius: 1),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 9.h),
                      Icon(
                        Icons.search,
                        color: primaryColor3,
                      ),
                      SizedBox(width: 9.h),
                      Flexible(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                              hintText: "Judul Flash Foto...",
                              border: InputBorder.none,
                              hintStyle: mediumText12,
                              labelStyle: mediumText12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: LazyLoadScrollView(
                  onEndOfPage: () {
                    controller.loadMore();
                    logSys("asasasasasasasdffasd");
                  },
                  child: MasonryGridView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: controller.lenkList.value,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: cekGenap(index) ? 223.h : 152.h,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://pbs.twimg.com/media/FIVYAH5VcAA1wcC.jpg:large"),
                                      fit: BoxFit.fill),
                                  color: primaryColor2,
                                  borderRadius: BorderRadius.circular(9)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Ink(
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Pengukuhan Relawan Pajak",
                                            style: mediumText9.copyWith(
                                                color: kWhite),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ),
              controller.isLoad.isTrue
                  ? const Center(
                      child: CircularProgressIndicator(
                      backgroundColor: Colors.transparent,
                    ))
                  : Container(),
              controller.isLoadMore.isFalse
                  ? const Center(child: Text("Tidak Ada Lagi"))
                  : Container()
            ]),
          ),
        ));
  }
}
