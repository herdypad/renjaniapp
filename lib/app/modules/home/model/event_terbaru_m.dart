// To parse this JSON data, do
//
//     final eventTerbaruM = eventTerbaruMFromJson(jsonString);

import 'dart:convert';

EventTerbaruM eventTerbaruMFromJson(String str) =>
    EventTerbaruM.fromJson(json.decode(str));

String eventTerbaruMToJson(EventTerbaruM data) => json.encode(data.toJson());

class EventTerbaruM {
  int? idEvent;
  String? judul;
  Status? status;
  String? namaKontri;
  String? nipApprEs3;
  dynamic alasanTolak;
  String? urlImage;
  String? deskripsi;
  String? wktEvent;
  DateTime? tglEvent;
  IdJenisEvent? idJenisEvent;
  IdModul? idModul;
  dynamic fileEvent;
  int? active;
  String? slug;
  int? pin;

  EventTerbaruM({
    this.idEvent,
    this.judul,
    this.status,
    this.namaKontri,
    this.nipApprEs3,
    this.alasanTolak,
    this.urlImage,
    this.deskripsi,
    this.wktEvent,
    this.tglEvent,
    this.idJenisEvent,
    this.idModul,
    this.fileEvent,
    this.active,
    this.slug,
    this.pin,
  });

  factory EventTerbaruM.fromJson(Map<String, dynamic> json) => EventTerbaruM(
        idEvent: json["idEvent"],
        judul: json["judul"],
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        namaKontri: json["namaKontri"],
        nipApprEs3: json["nipApprEs3"],
        alasanTolak: json["alasanTolak"],
        urlImage: json["urlImage"],
        deskripsi: json["deskripsi"],
        wktEvent: json["wktEvent"],
        tglEvent:
            json["tglEvent"] == null ? null : DateTime.parse(json["tglEvent"]),
        idJenisEvent: json["idJenisEvent"] == null
            ? null
            : IdJenisEvent.fromJson(json["idJenisEvent"]),
        idModul:
            json["idModul"] == null ? null : IdModul.fromJson(json["idModul"]),
        fileEvent: json["fileEvent"],
        active: json["active"],
        slug: json["slug"],
        pin: json["pin"],
      );

  Map<String, dynamic> toJson() => {
        "idEvent": idEvent,
        "judul": judul,
        "status": status?.toJson(),
        "namaKontri": namaKontri,
        "nipApprEs3": nipApprEs3,
        "alasanTolak": alasanTolak,
        "urlImage": urlImage,
        "deskripsi": deskripsi,
        "wktEvent": wktEvent,
        "tglEvent":
            "${tglEvent!.year.toString().padLeft(4, '0')}-${tglEvent!.month.toString().padLeft(2, '0')}-${tglEvent!.day.toString().padLeft(2, '0')}",
        "idJenisEvent": idJenisEvent?.toJson(),
        "idModul": idModul?.toJson(),
        "fileEvent": fileEvent,
        "active": active,
        "slug": slug,
        "pin": pin,
      };
}

class IdJenisEvent {
  int? idJenisEvent;
  String? namaEvent;
  int? active;

  IdJenisEvent({
    this.idJenisEvent,
    this.namaEvent,
    this.active,
  });

  factory IdJenisEvent.fromJson(Map<String, dynamic> json) => IdJenisEvent(
        idJenisEvent: json["idJenisEvent"],
        namaEvent: json["namaEvent"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "idJenisEvent": idJenisEvent,
        "namaEvent": namaEvent,
        "active": active,
      };
}

class IdModul {
  int? idModul;
  String? nmModul;
  int? status;

  IdModul({
    this.idModul,
    this.nmModul,
    this.status,
  });

  factory IdModul.fromJson(Map<String, dynamic> json) => IdModul(
        idModul: json["idModul"],
        nmModul: json["nmModul"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "idModul": idModul,
        "nmModul": nmModul,
        "status": status,
      };
}

class Status {
  int? idStatus;
  String? namaStatus;

  Status({
    this.idStatus,
    this.namaStatus,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        idStatus: json["idStatus"],
        namaStatus: json["namaStatus"],
      );

  Map<String, dynamic> toJson() => {
        "idStatus": idStatus,
        "namaStatus": namaStatus,
      };
}
