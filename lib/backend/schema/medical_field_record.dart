import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicalFieldRecord extends FirestoreRecord {
  MedicalFieldRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Field_ID" field.
  int? _fieldID;
  int get fieldID => _fieldID ?? 0;
  bool hasFieldID() => _fieldID != null;

  // "Field_name" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  bool hasFieldName() => _fieldName != null;

  // "Field_image_1" field.
  String? _fieldImage1;
  String get fieldImage1 => _fieldImage1 ?? '';
  bool hasFieldImage1() => _fieldImage1 != null;

  // "Field_image_2" field.
  String? _fieldImage2;
  String get fieldImage2 => _fieldImage2 ?? '';
  bool hasFieldImage2() => _fieldImage2 != null;

  // "Field_catch_line_1" field.
  String? _fieldCatchLine1;
  String get fieldCatchLine1 => _fieldCatchLine1 ?? '';
  bool hasFieldCatchLine1() => _fieldCatchLine1 != null;

  // "Conference_in_this_field" field.
  List<int>? _conferenceInThisField;
  List<int> get conferenceInThisField => _conferenceInThisField ?? const [];
  bool hasConferenceInThisField() => _conferenceInThisField != null;

  void _initializeFields() {
    _fieldID = castToType<int>(snapshotData['Field_ID']);
    _fieldName = snapshotData['Field_name'] as String?;
    _fieldImage1 = snapshotData['Field_image_1'] as String?;
    _fieldImage2 = snapshotData['Field_image_2'] as String?;
    _fieldCatchLine1 = snapshotData['Field_catch_line_1'] as String?;
    _conferenceInThisField =
        getDataList(snapshotData['Conference_in_this_field']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medical_field');

  static Stream<MedicalFieldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicalFieldRecord.fromSnapshot(s));

  static Future<MedicalFieldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicalFieldRecord.fromSnapshot(s));

  static MedicalFieldRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicalFieldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicalFieldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicalFieldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicalFieldRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicalFieldRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicalFieldRecordData({
  int? fieldID,
  String? fieldName,
  String? fieldImage1,
  String? fieldImage2,
  String? fieldCatchLine1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Field_ID': fieldID,
      'Field_name': fieldName,
      'Field_image_1': fieldImage1,
      'Field_image_2': fieldImage2,
      'Field_catch_line_1': fieldCatchLine1,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicalFieldRecordDocumentEquality
    implements Equality<MedicalFieldRecord> {
  const MedicalFieldRecordDocumentEquality();

  @override
  bool equals(MedicalFieldRecord? e1, MedicalFieldRecord? e2) {
    const listEquality = ListEquality();
    return e1?.fieldID == e2?.fieldID &&
        e1?.fieldName == e2?.fieldName &&
        e1?.fieldImage1 == e2?.fieldImage1 &&
        e1?.fieldImage2 == e2?.fieldImage2 &&
        e1?.fieldCatchLine1 == e2?.fieldCatchLine1 &&
        listEquality.equals(
            e1?.conferenceInThisField, e2?.conferenceInThisField);
  }

  @override
  int hash(MedicalFieldRecord? e) => const ListEquality().hash([
        e?.fieldID,
        e?.fieldName,
        e?.fieldImage1,
        e?.fieldImage2,
        e?.fieldCatchLine1,
        e?.conferenceInThisField
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicalFieldRecord;
}
