import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:renjani/themes.dart';

import '../controllers/pengumuman_view_controller.dart';

class PengumumanViewView extends GetView<PengumumanViewController> {
  const PengumumanViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(0),
          child:
              //tombol back
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back")),
        ),
        backgroundColor: primaryColor1,
      ),
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              child: Column(children: [
                SizedBox(height: 50),
                //isi data presensi
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //data presensi
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Card(
                          // clipBehavior is necessary because, without it, the InkWell's animation
                          // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
                          // This comes with a small performance cost, and you should not set [clipBehavior]
                          // unless you need it.
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                            child: const SizedBox(
                              width: 300,
                              height: 100,
                              child: Text('A card that can be tapped'),
                            ),
                          ),
                        ),
                      )
                      //card pengumuman
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
