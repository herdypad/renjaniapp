// To parse this JSON data, do
//
//     final whoiamM = whoiamMFromJson(jsonString);

import 'dart:convert';

WhoiamM whoiamMFromJson(String str) => WhoiamM.fromJson(json.decode(str));

String whoiamMToJson(WhoiamM data) => json.encode(data.toJson());

class WhoiamM {
  int? id;
  String? username;
  String? email;
  Relawan? relawan;
  dynamic taxCenter;
  List<Authority>? authorities;
  int? active;
  bool? enabled;
  bool? accountNonLocked;
  bool? credentialsNonExpired;
  bool? accountNonExpired;

  WhoiamM({
    this.id,
    this.username,
    this.email,
    this.relawan,
    this.taxCenter,
    this.authorities,
    this.active,
    this.enabled,
    this.accountNonLocked,
    this.credentialsNonExpired,
    this.accountNonExpired,
  });

  factory WhoiamM.fromJson(Map<String, dynamic> json) => WhoiamM(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        relawan:
            json["relawan"] == null ? null : Relawan.fromJson(json["relawan"]),
        taxCenter: json["taxCenter"],
        authorities: json["authorities"] == null
            ? []
            : List<Authority>.from(
                json["authorities"]!.map((x) => Authority.fromJson(x))),
        active: json["active"],
        enabled: json["enabled"],
        accountNonLocked: json["accountNonLocked"],
        credentialsNonExpired: json["credentialsNonExpired"],
        accountNonExpired: json["accountNonExpired"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "relawan": relawan?.toJson(),
        "taxCenter": taxCenter,
        "authorities": authorities == null
            ? []
            : List<dynamic>.from(authorities!.map((x) => x.toJson())),
        "active": active,
        "enabled": enabled,
        "accountNonLocked": accountNonLocked,
        "credentialsNonExpired": credentialsNonExpired,
        "accountNonExpired": accountNonExpired,
      };
}

class Authority {
  String? authority;

  Authority({
    this.authority,
  });

  factory Authority.fromJson(Map<String, dynamic> json) => Authority(
        authority: json["authority"],
      );

  Map<String, dynamic> toJson() => {
        "authority": authority,
      };
}

class Relawan {
  int? idRelawan;
  String? nama;
  String? email;
  String? alamat;
  String? nik;
  String? nim;
  String? notelp;
  String? tahunDaftar;
  Status? status;
  RelTaxCenter? relTaxCenter;
  String? jurusan;
  String? instagram;
  String? tiktok;
  int? active;
  String? fileDokumenPendaftaran;
  String? linkVideoPendaftaran;
  String? codeOfConduct;
  String? kodeAlokasiUnit;
  String? namaAlokasiUnit;
  dynamic imgRelawan;
  dynamic imgKtm;
  int? statusSurvey;
  int? statusPelatihan;

  Relawan({
    this.idRelawan,
    this.nama,
    this.email,
    this.alamat,
    this.nik,
    this.nim,
    this.notelp,
    this.tahunDaftar,
    this.status,
    this.relTaxCenter,
    this.jurusan,
    this.instagram,
    this.tiktok,
    this.active,
    this.fileDokumenPendaftaran,
    this.linkVideoPendaftaran,
    this.codeOfConduct,
    this.kodeAlokasiUnit,
    this.namaAlokasiUnit,
    this.imgRelawan,
    this.imgKtm,
    this.statusSurvey,
    this.statusPelatihan,
  });

  factory Relawan.fromJson(Map<String, dynamic> json) => Relawan(
        idRelawan: json["idRelawan"],
        nama: json["nama"],
        email: json["email"],
        alamat: json["alamat"],
        nik: json["nik"],
        nim: json["nim"],
        notelp: json["notelp"],
        tahunDaftar: json["tahunDaftar"],
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        relTaxCenter: json["relTaxCenter"] == null
            ? null
            : RelTaxCenter.fromJson(json["relTaxCenter"]),
        jurusan: json["jurusan"],
        instagram: json["instagram"],
        tiktok: json["tiktok"],
        active: json["active"],
        fileDokumenPendaftaran: json["fileDokumenPendaftaran"],
        linkVideoPendaftaran: json["linkVideoPendaftaran"],
        codeOfConduct: json["codeOfConduct"],
        kodeAlokasiUnit: json["kodeAlokasiUnit"],
        namaAlokasiUnit: json["namaAlokasiUnit"],
        imgRelawan: json["imgRelawan"],
        imgKtm: json["imgKtm"],
        statusSurvey: json["statusSurvey"],
        statusPelatihan: json["statusPelatihan"],
      );

  Map<String, dynamic> toJson() => {
        "idRelawan": idRelawan,
        "nama": nama,
        "email": email,
        "alamat": alamat,
        "nik": nik,
        "nim": nim,
        "notelp": notelp,
        "tahunDaftar": tahunDaftar,
        "status": status?.toJson(),
        "relTaxCenter": relTaxCenter?.toJson(),
        "jurusan": jurusan,
        "instagram": instagram,
        "tiktok": tiktok,
        "active": active,
        "fileDokumenPendaftaran": fileDokumenPendaftaran,
        "linkVideoPendaftaran": linkVideoPendaftaran,
        "codeOfConduct": codeOfConduct,
        "kodeAlokasiUnit": kodeAlokasiUnit,
        "namaAlokasiUnit": namaAlokasiUnit,
        "imgRelawan": imgRelawan,
        "imgKtm": imgKtm,
        "statusSurvey": statusSurvey,
        "statusPelatihan": statusPelatihan,
      };
}

class RelTaxCenter {
  int? idTaxcenter;
  String? nama;
  String? email;
  String? alamat;
  String? notelp;

  RelTaxCenter({
    this.idTaxcenter,
    this.nama,
    this.email,
    this.alamat,
    this.notelp,
  });

  factory RelTaxCenter.fromJson(Map<String, dynamic> json) => RelTaxCenter(
        idTaxcenter: json["idTaxcenter"],
        nama: json["nama"],
        email: json["email"],
        alamat: json["alamat"],
        notelp: json["notelp"],
      );

  Map<String, dynamic> toJson() => {
        "idTaxcenter": idTaxcenter,
        "nama": nama,
        "email": email,
        "alamat": alamat,
        "notelp": notelp,
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
