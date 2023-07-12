import 'package:renjani/app/api/relawan_api.dart';
import 'package:renjani/app/modules/home/model/berita_terbaru_m.dart';
import 'package:renjani/app/modules/home/model/event_terbaru_m.dart';
import 'package:renjani/utils/app_utils.dart';

class BerandaRepo {
  final TAG = "BerandaRepo : ";

  Future<List<String>> getflashfoto() async {
    try {
      final data = await RelawanAPi.flashFotoTerbaru();
      // logSys(TAG);
      // logSys(TAG + data['content'][0]['urlImage'].toString());
      final List<dynamic> a = data['content'];
      final List<String> urlImages =
          a.map((item) => item['urlImage'] as String).toList();
      // logSys(urlImages[0]);
      // logSys(urlImages[1]);
      return urlImages;
    } catch (e) {
      logSys(TAG + e.toString());
      return [];
    }
  }

  Future<List<EventTerbaruM>> geteventterbaru() async {
    try {
      final data = await RelawanAPi.eventTerbaru();
      final a = data['content'];
      // logSys(TAG);
      // logSys(TAG + data['content'].toString());
      List<EventTerbaruM> b = <EventTerbaruM>[];
      b = List.from(a.map((e) => EventTerbaruM.fromJson(e)));
      // logSys(b[0].idEvent.toString());

      return b;
    } catch (e) {
      logSys(TAG + e.toString());
      return [];
    }
  }

  Future<List<BeritaTerbaruM>> getBeritabaru() async {
    try {
      final data = await RelawanAPi.beritaTerbaru();
      final a = data['content'];
      // logSys(TAG);
      // logSys(TAG + data['content'].toString());
      List<BeritaTerbaruM> b = <BeritaTerbaruM>[];
      b = List.from(a.map((e) => BeritaTerbaruM.fromJson(e)));
      // logSys(b[0].idEvent.toString());

      return b;
    } catch (e) {
      logSys(TAG + e.toString());
      return [];
    }
  }
}
