import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:renjani/themes.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class PengumumanDetail extends StatefulWidget {
  final String urlpdf;
  final String judul;
  final String isi;
  const PengumumanDetail({
    required this.urlpdf,
    required this.judul,
    required this.isi,
  });

  @override
  State<PengumumanDetail> createState() => _PengumumanDetailState();
}

class _PengumumanDetailState extends State<PengumumanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    widget.judul,
                    style: semiBoldText14,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    '14 Januari 2023',
                    style: mediumText11.copyWith(fontSize: 12),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: HtmlWidget(
                    widget.isi ?? '',
                    key: Key("ANNOUNCEMENT"),
                    textStyle: mediumText11,
                  ),
                )
                // Flexible(
                //   child: Text(widget.isi),
                // )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: kWhite,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.picture_as_pdf,
                          size: 16.0,
                          color: primaryColor3,
                        ),
                        Text(
                          widget.urlpdf,
                          style: mediumText12.copyWith(
                              fontSize: 10, color: primaryColor3),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
