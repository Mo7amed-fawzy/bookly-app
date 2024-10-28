// import 'package:http/http.dart';
// import 'package:meta/meta.dart';

import 'package:bookly/features/home/data/models/image_links.dart';
import 'package:bookly/features/home/data/models/reading_modes.dart';
import 'package:bookly/features/home/data/models/summary.dart';

class VolumeInfo {
  late ImageLinks? imageLinks;
  late double averageRating;
  late num ratingsCount;
  VolumeInfo({
    this.title,
    this.description,
    this.authors,
    this.publisher,
    this.readingModes,
    this.printType,
    this.categories,
    required this.averageRating,
    required this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    // authors = (json['authors'] as List<dynamic>?)?.cast<String>(); كانت كدا فكود ثروت
    publisher = json['publisher'];
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];

    averageRating = json['averageRating'] != null
        ? (json['averageRating'] is int
            ? (json['averageRating'] as int).toDouble() // تحويل int إلى double
            : json['averageRating'] is double
                ? json['averageRating']
                    as double // استخدام القيمة كما هي إذا كانت double
                : 0.0) // إذا كانت نوعًا آخر غير int أو double
        : 0.0; // القيمة الافتراضية إذا كانت null

    //     averageRating = (json['averageRating'] is double) كود ثروت
    // ? json['averageRating']
    // : (json['averageRating'] as int?)?.toDouble() ?? 0.0;

    ratingsCount =
        json['ratingsCount'] != null ? json['ratingsCount'].toInt() : 0;

    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] == null
        ? null
        : ImageLinks.fromJson(json['imageLinks']);
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? title;
  String? description;
  List<String>? authors;
  String? publisher;
  ReadingModes? readingModes;
  String? printType;
  List<String>? categories;
  // int averageRating;
  // int ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;

  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['printType'] = printType;
    map['categories'] = categories;
    map['averageRating'] = averageRating;
    map['ratingsCount'] = ratingsCount;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }

    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}
