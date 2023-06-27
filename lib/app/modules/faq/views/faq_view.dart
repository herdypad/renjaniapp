import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: primaryColor1,
        title: const Text("TabFaq"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300.h,
                decoration: BoxDecoration(
                  color: primaryColor1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 24.0,
                        color: primaryColor2,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 50.h),
                            Text(
                              "FAQ",
                              style:
                                  semiBoldText24.copyWith(color: primaryColor2),
                            ),
                            SizedBox(height: 50.h),
                            //box white
                            Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(27)),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      // General information section
                                      const ExpansionTile(
                                        title: Text('Kenapa Langit Hijau ?'),
                                        children: [
                                          ListTile(
                                            title: Text('What is this product'),
                                            subtitle: Text(
                                                'This is a product/service that does X, Y, and Z.'),
                                          ),
                                        ],
                                      ),
                                      // General information section
                                      const ExpansionTile(
                                        title: Text('General information'),
                                        children: [
                                          ListTile(
                                            title: Text(
                                                'What is this product/service?'),
                                            subtitle: Text(
                                                'This is a product/service that does X, Y, and Z.'),
                                          ),
                                          ListTile(
                                            title: Text('How does it work?'),
                                            subtitle: Text(
                                                'It works by doing A, B, and C.'),
                                          ),
                                        ],
                                      ),
                                      // General information section
                                      const ExpansionTile(
                                        title: Text('General information'),
                                        children: [
                                          ListTile(
                                            title: Text(
                                                'What is this product/service?'),
                                            subtitle: Text(
                                                'This is a product/service that does X, Y, and Z.'),
                                          ),
                                          ListTile(
                                            title: Text('How does it work?'),
                                            subtitle: Text(
                                                'It works by doing A, B, and C.'),
                                          ),
                                        ],
                                      ),
                                      // General information section
                                      const ExpansionTile(
                                        title: Text('General information'),
                                        children: [
                                          ListTile(
                                            title: Text(
                                                'What is this product/service?'),
                                            subtitle: Text(
                                                'This is a product/service that does X, Y, and Z.'),
                                          ),
                                          ListTile(
                                            title: Text('How does it work?'),
                                            subtitle: Text(
                                                'It works by doing A, B, and C.'),
                                          ),
                                        ],
                                      ),
                                      // General information section
                                      const ExpansionTile(
                                        title: Text('General information'),
                                        children: [
                                          ListTile(
                                            title: Text(
                                                'What is this product/service?'),
                                            subtitle: Text(
                                                'This is a product/service that does X, Y, and Z.'),
                                          ),
                                          ListTile(
                                            title: Text('How does it work?'),
                                            subtitle: Text(
                                                'It works by doing A, B, and C.'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String data = """"
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";
