// To parse this JSON data, do
//
//     final beritaTerbaruM = beritaTerbaruMFromJson(jsonString);

import 'dart:convert';

BeritaTerbaruM beritaTerbaruMFromJson(String str) =>
    BeritaTerbaruM.fromJson(json.decode(str));

String beritaTerbaruMToJson(BeritaTerbaruM data) => json.encode(data.toJson());

class BeritaTerbaruM {
  int? idBerita;
  String? judul;
  String? urlImage;
  String? isi;
  Status? status;
  String? namaKontri;
  DateTime? wktApprEs3;
  dynamic alasanTolak;
  IdModul? idModul;
  int? active;
  String? slug;
  int? pin;
  List<FileBeritaList>? fileBeritaList;

  BeritaTerbaruM({
    this.idBerita,
    this.judul,
    this.urlImage,
    this.isi,
    this.status,
    this.namaKontri,
    this.wktApprEs3,
    this.alasanTolak,
    this.idModul,
    this.active,
    this.slug,
    this.pin,
    this.fileBeritaList,
  });

  factory BeritaTerbaruM.fromJson(Map<String, dynamic> json) => BeritaTerbaruM(
        idBerita: json["idBerita"],
        judul: json["judul"],
        urlImage: json["urlImage"],
        isi: json["isi"],
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        namaKontri: json["namaKontri"],
        wktApprEs3: json["wktApprEs3"] == null
            ? null
            : DateTime.parse(json["wktApprEs3"]),
        alasanTolak: json["alasanTolak"],
        idModul:
            json["idModul"] == null ? null : IdModul.fromJson(json["idModul"]),
        active: json["active"],
        slug: json["slug"],
        pin: json["pin"],
        fileBeritaList: json["fileBeritaList"] == null
            ? []
            : List<FileBeritaList>.from(
                json["fileBeritaList"]!.map((x) => FileBeritaList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "idBerita": idBerita,
        "judul": judul,
        "urlImage": urlImage,
        "isi": isi,
        "status": status?.toJson(),
        "namaKontri": namaKontri,
        "wktApprEs3": wktApprEs3?.toIso8601String(),
        "alasanTolak": alasanTolak,
        "idModul": idModul?.toJson(),
        "active": active,
        "slug": slug,
        "pin": pin,
        "fileBeritaList": fileBeritaList == null
            ? []
            : List<dynamic>.from(fileBeritaList!.map((x) => x.toJson())),
      };
}

class FileBeritaList {
  int? idFIleBerita;
  String? nama;
  String? link;

  FileBeritaList({
    this.idFIleBerita,
    this.nama,
    this.link,
  });

  factory FileBeritaList.fromJson(Map<String, dynamic> json) => FileBeritaList(
        idFIleBerita: json["idFIleBerita"],
        nama: json["nama"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "idFIleBerita": idFIleBerita,
        "nama": nama,
        "link": link,
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
