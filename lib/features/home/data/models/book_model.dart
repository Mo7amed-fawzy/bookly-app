// import 'package:http/http.dart';

import 'package:bookly/features/home/data/models/acces_info.dart';
import 'package:bookly/features/home/data/models/sale_info.dart';
import 'package:bookly/features/home/data/models/search_info.dart';
import 'package:bookly/features/home/data/models/volume_info.dart';

class BookModel {
  late VolumeInfo volumeInfo; // سيبها لبعدين

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo, // يبقى كما هو
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = VolumeInfo.fromJson(
        json['volumeInfo']); // عدلت عليها عشان انا متاكد انها مش بنال
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  // VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{}; // كدا عملت ماب فاضيه
    // String => key , dynamic => vlue (String, int, bool, List، els).
    map['kind'] = kind; // 'kind' => key , kind => value (String)
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}





// import 'package:flutercoursetwo/features/home/data/models/acces_info.dart';
// import 'package:flutercoursetwo/features/home/data/models/sale_info.dart';
// import 'package:flutercoursetwo/features/home/data/models/search_info.dart';
// import 'package:flutercoursetwo/features/home/data/models/volume_info.dart';

// class BookModel {
//   late VolumeInfo volumeInfo; // سيُهيأ لاحقًا

//   BookModel({
//     this.kind,
//     this.id,
//     this.etag,
//     this.selfLink,
//     required this.volumeInfo, // يبقى كما هو
//     this.saleInfo,
//     this.accessInfo,
//     this.searchInfo,
//   });

//   BookModel.fromJson(dynamic json) {
//     kind = json['kind'];
//     id = json['id'];
//     etag = json['etag'];
//     selfLink = json['selfLink'];
//     volumeInfo = VolumeInfo.fromJson(json['volumeInfo']); // يتم التهيئة هنا
//     saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
//     accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
//     searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
//   }

//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;
// }
