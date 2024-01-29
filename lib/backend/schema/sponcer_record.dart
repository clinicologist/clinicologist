import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SponcerRecord extends FirestoreRecord {
  SponcerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Sponcer_ID" field.
  int? _sponcerID;
  int get sponcerID => _sponcerID ?? 0;
  bool hasSponcerID() => _sponcerID != null;

  // "Sponcer_name" field.
  String? _sponcerName;
  String get sponcerName => _sponcerName ?? '';
  bool hasSponcerName() => _sponcerName != null;

  // "Sponcer_description" field.
  String? _sponcerDescription;
  String get sponcerDescription => _sponcerDescription ?? '';
  bool hasSponcerDescription() => _sponcerDescription != null;

  // "Sponcer_logo" field.
  String? _sponcerLogo;
  String get sponcerLogo => _sponcerLogo ?? '';
  bool hasSponcerLogo() => _sponcerLogo != null;

  // "Sponcer_image_1" field.
  String? _sponcerImage1;
  String get sponcerImage1 => _sponcerImage1 ?? '';
  bool hasSponcerImage1() => _sponcerImage1 != null;

  // "Sponcer_url" field.
  String? _sponcerUrl;
  String get sponcerUrl => _sponcerUrl ?? '';
  bool hasSponcerUrl() => _sponcerUrl != null;

  // "Sponcer_cnf_id" field.
  List<int>? _sponcerCnfId;
  List<int> get sponcerCnfId => _sponcerCnfId ?? const [];
  bool hasSponcerCnfId() => _sponcerCnfId != null;

  void _initializeFields() {
    _sponcerID = castToType<int>(snapshotData['Sponcer_ID']);
    _sponcerName = snapshotData['Sponcer_name'] as String?;
    _sponcerDescription = snapshotData['Sponcer_description'] as String?;
    _sponcerLogo = snapshotData['Sponcer_logo'] as String?;
    _sponcerImage1 = snapshotData['Sponcer_image_1'] as String?;
    _sponcerUrl = snapshotData['Sponcer_url'] as String?;
    _sponcerCnfId = getDataList(snapshotData['Sponcer_cnf_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sponcer');

  static Stream<SponcerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SponcerRecord.fromSnapshot(s));

  static Future<SponcerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SponcerRecord.fromSnapshot(s));

  static SponcerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SponcerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SponcerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SponcerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SponcerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SponcerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSponcerRecordData({
  int? sponcerID,
  String? sponcerName,
  String? sponcerDescription,
  String? sponcerLogo,
  String? sponcerImage1,
  String? sponcerUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Sponcer_ID': sponcerID,
      'Sponcer_name': sponcerName,
      'Sponcer_description': sponcerDescription,
      'Sponcer_logo': sponcerLogo,
      'Sponcer_image_1': sponcerImage1,
      'Sponcer_url': sponcerUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SponcerRecordDocumentEquality implements Equality<SponcerRecord> {
  const SponcerRecordDocumentEquality();

  @override
  bool equals(SponcerRecord? e1, SponcerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sponcerID == e2?.sponcerID &&
        e1?.sponcerName == e2?.sponcerName &&
        e1?.sponcerDescription == e2?.sponcerDescription &&
        e1?.sponcerLogo == e2?.sponcerLogo &&
        e1?.sponcerImage1 == e2?.sponcerImage1 &&
        e1?.sponcerUrl == e2?.sponcerUrl &&
        listEquality.equals(e1?.sponcerCnfId, e2?.sponcerCnfId);
  }

  @override
  int hash(SponcerRecord? e) => const ListEquality().hash([
        e?.sponcerID,
        e?.sponcerName,
        e?.sponcerDescription,
        e?.sponcerLogo,
        e?.sponcerImage1,
        e?.sponcerUrl,
        e?.sponcerCnfId
      ]);

  @override
  bool isValidKey(Object? o) => o is SponcerRecord;
}
