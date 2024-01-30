import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConferenceRecord extends FirestoreRecord {
  ConferenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "C_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "C_start_date" field.
  DateTime? _cStartDate;
  DateTime? get cStartDate => _cStartDate;
  bool hasCStartDate() => _cStartDate != null;

  // "C_end_date" field.
  DateTime? _cEndDate;
  DateTime? get cEndDate => _cEndDate;
  bool hasCEndDate() => _cEndDate != null;

  // "C_start_time" field.
  DateTime? _cStartTime;
  DateTime? get cStartTime => _cStartTime;
  bool hasCStartTime() => _cStartTime != null;

  // "C_end_time" field.
  DateTime? _cEndTime;
  DateTime? get cEndTime => _cEndTime;
  bool hasCEndTime() => _cEndTime != null;

  // "C_fee" field.
  int? _cFee;
  int get cFee => _cFee ?? 0;
  bool hasCFee() => _cFee != null;

  // "C_points" field.
  int? _cPoints;
  int get cPoints => _cPoints ?? 0;
  bool hasCPoints() => _cPoints != null;

  // "C_address_line1" field.
  String? _cAddressLine1;
  String get cAddressLine1 => _cAddressLine1 ?? '';
  bool hasCAddressLine1() => _cAddressLine1 != null;

  // "C_address_line2" field.
  String? _cAddressLine2;
  String get cAddressLine2 => _cAddressLine2 ?? '';
  bool hasCAddressLine2() => _cAddressLine2 != null;

  // "C_address" field.
  LatLng? _cAddress;
  LatLng? get cAddress => _cAddress;
  bool hasCAddress() => _cAddress != null;

  // "C_image_1" field.
  String? _cImage1;
  String get cImage1 => _cImage1 ?? '';
  bool hasCImage1() => _cImage1 != null;

  // "C_image_2" field.
  String? _cImage2;
  String get cImage2 => _cImage2 ?? '';
  bool hasCImage2() => _cImage2 != null;

  // "C_image_gallary" field.
  List<String>? _cImageGallary;
  List<String> get cImageGallary => _cImageGallary ?? const [];
  bool hasCImageGallary() => _cImageGallary != null;

  // "C_discription" field.
  String? _cDiscription;
  String get cDiscription => _cDiscription ?? '';
  bool hasCDiscription() => _cDiscription != null;

  // "C_ID" field.
  int? _cId;
  int get cId => _cId ?? 0;
  bool hasCId() => _cId != null;

  // "C_catchy_line_1" field.
  String? _cCatchyLine1;
  String get cCatchyLine1 => _cCatchyLine1 ?? '';
  bool hasCCatchyLine1() => _cCatchyLine1 != null;

  // "C_catchy_line_2" field.
  String? _cCatchyLine2;
  String get cCatchyLine2 => _cCatchyLine2 ?? '';
  bool hasCCatchyLine2() => _cCatchyLine2 != null;

  // "C_attenders" field.
  List<DocumentReference>? _cAttenders;
  List<DocumentReference> get cAttenders => _cAttenders ?? const [];
  bool hasCAttenders() => _cAttenders != null;

  // "c_speaker_id" field.
  List<int>? _cSpeakerId;
  List<int> get cSpeakerId => _cSpeakerId ?? const [];
  bool hasCSpeakerId() => _cSpeakerId != null;

  // "C_medical_field_id" field.
  int? _cMedicalFieldId;
  int get cMedicalFieldId => _cMedicalFieldId ?? 0;
  bool hasCMedicalFieldId() => _cMedicalFieldId != null;

  // "C_hospital_id" field.
  int? _cHospitalId;
  int get cHospitalId => _cHospitalId ?? 0;
  bool hasCHospitalId() => _cHospitalId != null;

  // "C_sponcer_id" field.
  List<int>? _cSponcerId;
  List<int> get cSponcerId => _cSponcerId ?? const [];
  bool hasCSponcerId() => _cSponcerId != null;

  // "C_organization_id" field.
  int? _cOrganizationId;
  int get cOrganizationId => _cOrganizationId ?? 0;
  bool hasCOrganizationId() => _cOrganizationId != null;

  // "C_medical_field_name" field.
  String? _cMedicalFieldName;
  String get cMedicalFieldName => _cMedicalFieldName ?? '';
  bool hasCMedicalFieldName() => _cMedicalFieldName != null;

  // "C_field_ref" field.
  DocumentReference? _cFieldRef;
  DocumentReference? get cFieldRef => _cFieldRef;
  bool hasCFieldRef() => _cFieldRef != null;

  void _initializeFields() {
    _cName = snapshotData['C_name'] as String?;
    _cStartDate = snapshotData['C_start_date'] as DateTime?;
    _cEndDate = snapshotData['C_end_date'] as DateTime?;
    _cStartTime = snapshotData['C_start_time'] as DateTime?;
    _cEndTime = snapshotData['C_end_time'] as DateTime?;
    _cFee = castToType<int>(snapshotData['C_fee']);
    _cPoints = castToType<int>(snapshotData['C_points']);
    _cAddressLine1 = snapshotData['C_address_line1'] as String?;
    _cAddressLine2 = snapshotData['C_address_line2'] as String?;
    _cAddress = snapshotData['C_address'] as LatLng?;
    _cImage1 = snapshotData['C_image_1'] as String?;
    _cImage2 = snapshotData['C_image_2'] as String?;
    _cImageGallary = getDataList(snapshotData['C_image_gallary']);
    _cDiscription = snapshotData['C_discription'] as String?;
    _cId = castToType<int>(snapshotData['C_ID']);
    _cCatchyLine1 = snapshotData['C_catchy_line_1'] as String?;
    _cCatchyLine2 = snapshotData['C_catchy_line_2'] as String?;
    _cAttenders = getDataList(snapshotData['C_attenders']);
    _cSpeakerId = getDataList(snapshotData['c_speaker_id']);
    _cMedicalFieldId = castToType<int>(snapshotData['C_medical_field_id']);
    _cHospitalId = castToType<int>(snapshotData['C_hospital_id']);
    _cSponcerId = getDataList(snapshotData['C_sponcer_id']);
    _cOrganizationId = castToType<int>(snapshotData['C_organization_id']);
    _cMedicalFieldName = snapshotData['C_medical_field_name'] as String?;
    _cFieldRef = snapshotData['C_field_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CONFERENCE');

  static Stream<ConferenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConferenceRecord.fromSnapshot(s));

  static Future<ConferenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConferenceRecord.fromSnapshot(s));

  static ConferenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConferenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConferenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConferenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConferenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConferenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConferenceRecordData({
  String? cName,
  DateTime? cStartDate,
  DateTime? cEndDate,
  DateTime? cStartTime,
  DateTime? cEndTime,
  int? cFee,
  int? cPoints,
  String? cAddressLine1,
  String? cAddressLine2,
  LatLng? cAddress,
  String? cImage1,
  String? cImage2,
  String? cDiscription,
  int? cId,
  String? cCatchyLine1,
  String? cCatchyLine2,
  int? cMedicalFieldId,
  int? cHospitalId,
  int? cOrganizationId,
  String? cMedicalFieldName,
  DocumentReference? cFieldRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'C_name': cName,
      'C_start_date': cStartDate,
      'C_end_date': cEndDate,
      'C_start_time': cStartTime,
      'C_end_time': cEndTime,
      'C_fee': cFee,
      'C_points': cPoints,
      'C_address_line1': cAddressLine1,
      'C_address_line2': cAddressLine2,
      'C_address': cAddress,
      'C_image_1': cImage1,
      'C_image_2': cImage2,
      'C_discription': cDiscription,
      'C_ID': cId,
      'C_catchy_line_1': cCatchyLine1,
      'C_catchy_line_2': cCatchyLine2,
      'C_medical_field_id': cMedicalFieldId,
      'C_hospital_id': cHospitalId,
      'C_organization_id': cOrganizationId,
      'C_medical_field_name': cMedicalFieldName,
      'C_field_ref': cFieldRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConferenceRecordDocumentEquality implements Equality<ConferenceRecord> {
  const ConferenceRecordDocumentEquality();

  @override
  bool equals(ConferenceRecord? e1, ConferenceRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cName == e2?.cName &&
        e1?.cStartDate == e2?.cStartDate &&
        e1?.cEndDate == e2?.cEndDate &&
        e1?.cStartTime == e2?.cStartTime &&
        e1?.cEndTime == e2?.cEndTime &&
        e1?.cFee == e2?.cFee &&
        e1?.cPoints == e2?.cPoints &&
        e1?.cAddressLine1 == e2?.cAddressLine1 &&
        e1?.cAddressLine2 == e2?.cAddressLine2 &&
        e1?.cAddress == e2?.cAddress &&
        e1?.cImage1 == e2?.cImage1 &&
        e1?.cImage2 == e2?.cImage2 &&
        listEquality.equals(e1?.cImageGallary, e2?.cImageGallary) &&
        e1?.cDiscription == e2?.cDiscription &&
        e1?.cId == e2?.cId &&
        e1?.cCatchyLine1 == e2?.cCatchyLine1 &&
        e1?.cCatchyLine2 == e2?.cCatchyLine2 &&
        listEquality.equals(e1?.cAttenders, e2?.cAttenders) &&
        listEquality.equals(e1?.cSpeakerId, e2?.cSpeakerId) &&
        e1?.cMedicalFieldId == e2?.cMedicalFieldId &&
        e1?.cHospitalId == e2?.cHospitalId &&
        listEquality.equals(e1?.cSponcerId, e2?.cSponcerId) &&
        e1?.cOrganizationId == e2?.cOrganizationId &&
        e1?.cMedicalFieldName == e2?.cMedicalFieldName &&
        e1?.cFieldRef == e2?.cFieldRef;
  }

  @override
  int hash(ConferenceRecord? e) => const ListEquality().hash([
        e?.cName,
        e?.cStartDate,
        e?.cEndDate,
        e?.cStartTime,
        e?.cEndTime,
        e?.cFee,
        e?.cPoints,
        e?.cAddressLine1,
        e?.cAddressLine2,
        e?.cAddress,
        e?.cImage1,
        e?.cImage2,
        e?.cImageGallary,
        e?.cDiscription,
        e?.cId,
        e?.cCatchyLine1,
        e?.cCatchyLine2,
        e?.cAttenders,
        e?.cSpeakerId,
        e?.cMedicalFieldId,
        e?.cHospitalId,
        e?.cSponcerId,
        e?.cOrganizationId,
        e?.cMedicalFieldName,
        e?.cFieldRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ConferenceRecord;
}
