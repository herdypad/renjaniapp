// To parse this JSON data, do
//
//     final galeryTerbaruM = galeryTerbaruMFromJson(jsonString);

import 'dart:convert';

GaleryTerbaruM galeryTerbaruMFromJson(String str) =>
    GaleryTerbaruM.fromJson(json.decode(str));

String galeryTerbaruMToJson(GaleryTerbaruM data) => json.encode(data.toJson());

class GaleryTerbaruM {
  int? idFlashfoto;
  String? judul;
  String? urlImage;
  dynamic namaKontri;
  DateTime? wktApprEs3;
  dynamic alasanTolak;
  String? isi;
  String? kodekantor;
  Status? status;
  int? active;
  String? slug;
  int? pin;
  IdModul? idModul;
  List<ImgFlashfotoList>? imgFlashfotoList;

  GaleryTerbaruM({
    this.idFlashfoto,
    this.judul,
    this.urlImage,
    this.namaKontri,
    this.wktApprEs3,
    this.alasanTolak,
    this.isi,
    this.kodekantor,
    this.status,
    this.active,
    this.slug,
    this.pin,
    this.idModul,
    this.imgFlashfotoList,
  });

  factory GaleryTerbaruM.fromJson(Map<String, dynamic> json) => GaleryTerbaruM(
        idFlashfoto: json["idFlashfoto"],
        judul: json["judul"],
        urlImage: json["urlImage"],
        namaKontri: json["namaKontri"],
        wktApprEs3: json["wktApprEs3"] == null
            ? null
            : DateTime.parse(json["wktApprEs3"]),
        alasanTolak: json["alasanTolak"],
        isi: json["isi"],
        kodekantor: json["kodekantor"],
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        active: json["active"],
        slug: json["slug"],
        pin: json["pin"],
        idModul:
            json["idModul"] == null ? null : IdModul.fromJson(json["idModul"]),
        imgFlashfotoList: json["imgFlashfotoList"] == null
            ? []
            : List<ImgFlashfotoList>.from(json["imgFlashfotoList"]!
                .map((x) => ImgFlashfotoList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "idFlashfoto": idFlashfoto,
        "judul": judul,
        "urlImage": urlImage,
        "namaKontri": namaKontri,
        "wktApprEs3": wktApprEs3?.toIso8601String(),
        "alasanTolak": alasanTolak,
        "isi": isi,
        "kodekantor": kodekantor,
        "status": status?.toJson(),
        "active": active,
        "slug": slug,
        "pin": pin,
        "idModul": idModul?.toJson(),
        "imgFlashfotoList": imgFlashfotoList == null
            ? []
            : List<dynamic>.from(imgFlashfotoList!.map((x) => x.toJson())),
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

class ImgFlashfotoList {
  int? idImgFlash;
  String? deskripsi;
  String? link;
  String? nama;
  DateTime? wktUpload;

  ImgFlashfotoList({
    this.idImgFlash,
    this.deskripsi,
    this.link,
    this.nama,
    this.wktUpload,
  });

  factory ImgFlashfotoList.fromJson(Map<String, dynamic> json) =>
      ImgFlashfotoList(
        idImgFlash: json["idImgFlash"],
        deskripsi: json["deskripsi"],
        link: json["link"],
        nama: json["nama"],
        wktUpload: json["wktUpload"] == null
            ? null
            : DateTime.parse(json["wktUpload"]),
      );

  Map<String, dynamic> toJson() => {
        "idImgFlash": idImgFlash,
        "deskripsi": deskripsi,
        "link": link,
        "nama": nama,
        "wktUpload": wktUpload?.toIso8601String(),
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
