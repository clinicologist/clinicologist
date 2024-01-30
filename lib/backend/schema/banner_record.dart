import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerRecord extends FirestoreRecord {
  BannerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "banner_ID" field.
  int? _bannerID;
  int get bannerID => _bannerID ?? 0;
  bool hasBannerID() => _bannerID != null;

  // "banner_image" field.
  String? _bannerImage;
  String get bannerImage => _bannerImage ?? '';
  bool hasBannerImage() => _bannerImage != null;

  // "banner_button" field.
  String? _bannerButton;
  String get bannerButton => _bannerButton ?? '';
  bool hasBannerButton() => _bannerButton != null;

  // "banner_title" field.
  String? _bannerTitle;
  String get bannerTitle => _bannerTitle ?? '';
  bool hasBannerTitle() => _bannerTitle != null;

  // "banner_subtitle" field.
  String? _bannerSubtitle;
  String get bannerSubtitle => _bannerSubtitle ?? '';
  bool hasBannerSubtitle() => _bannerSubtitle != null;

  // "banner_ref" field.
  DocumentReference? _bannerRef;
  DocumentReference? get bannerRef => _bannerRef;
  bool hasBannerRef() => _bannerRef != null;

  // "banner_url" field.
  String? _bannerUrl;
  String get bannerUrl => _bannerUrl ?? '';
  bool hasBannerUrl() => _bannerUrl != null;

  void _initializeFields() {
    _bannerID = castToType<int>(snapshotData['banner_ID']);
    _bannerImage = snapshotData['banner_image'] as String?;
    _bannerButton = snapshotData['banner_button'] as String?;
    _bannerTitle = snapshotData['banner_title'] as String?;
    _bannerSubtitle = snapshotData['banner_subtitle'] as String?;
    _bannerRef = snapshotData['banner_ref'] as DocumentReference?;
    _bannerUrl = snapshotData['banner_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banner');

  static Stream<BannerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannerRecord.fromSnapshot(s));

  static Future<BannerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannerRecord.fromSnapshot(s));

  static BannerRecord fromSnapshot(DocumentSnapshot snapshot) => BannerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannerRecordData({
  int? bannerID,
  String? bannerImage,
  String? bannerButton,
  String? bannerTitle,
  String? bannerSubtitle,
  DocumentReference? bannerRef,
  String? bannerUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'banner_ID': bannerID,
      'banner_image': bannerImage,
      'banner_button': bannerButton,
      'banner_title': bannerTitle,
      'banner_subtitle': bannerSubtitle,
      'banner_ref': bannerRef,
      'banner_url': bannerUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannerRecordDocumentEquality implements Equality<BannerRecord> {
  const BannerRecordDocumentEquality();

  @override
  bool equals(BannerRecord? e1, BannerRecord? e2) {
    return e1?.bannerID == e2?.bannerID &&
        e1?.bannerImage == e2?.bannerImage &&
        e1?.bannerButton == e2?.bannerButton &&
        e1?.bannerTitle == e2?.bannerTitle &&
        e1?.bannerSubtitle == e2?.bannerSubtitle &&
        e1?.bannerRef == e2?.bannerRef &&
        e1?.bannerUrl == e2?.bannerUrl;
  }

  @override
  int hash(BannerRecord? e) => const ListEquality().hash([
        e?.bannerID,
        e?.bannerImage,
        e?.bannerButton,
        e?.bannerTitle,
        e?.bannerSubtitle,
        e?.bannerRef,
        e?.bannerUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is BannerRecord;
}
