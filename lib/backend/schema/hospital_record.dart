import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalRecord extends FirestoreRecord {
  HospitalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Hosp_ID" field.
  int? _hospID;
  int get hospID => _hospID ?? 0;
  bool hasHospID() => _hospID != null;

  // "Hosp_name" field.
  String? _hospName;
  String get hospName => _hospName ?? '';
  bool hasHospName() => _hospName != null;

  // "Hosp_description" field.
  String? _hospDescription;
  String get hospDescription => _hospDescription ?? '';
  bool hasHospDescription() => _hospDescription != null;

  // "Hosp_image_1" field.
  String? _hospImage1;
  String get hospImage1 => _hospImage1 ?? '';
  bool hasHospImage1() => _hospImage1 != null;

  // "Hosp_image_2" field.
  String? _hospImage2;
  String get hospImage2 => _hospImage2 ?? '';
  bool hasHospImage2() => _hospImage2 != null;

  // "Hosp_address" field.
  String? _hospAddress;
  String get hospAddress => _hospAddress ?? '';
  bool hasHospAddress() => _hospAddress != null;

  // "Hosp_address_2" field.
  LatLng? _hospAddress2;
  LatLng? get hospAddress2 => _hospAddress2;
  bool hasHospAddress2() => _hospAddress2 != null;

  // "Hosp_cnf_id" field.
  List<int>? _hospCnfId;
  List<int> get hospCnfId => _hospCnfId ?? const [];
  bool hasHospCnfId() => _hospCnfId != null;

  void _initializeFields() {
    _hospID = castToType<int>(snapshotData['Hosp_ID']);
    _hospName = snapshotData['Hosp_name'] as String?;
    _hospDescription = snapshotData['Hosp_description'] as String?;
    _hospImage1 = snapshotData['Hosp_image_1'] as String?;
    _hospImage2 = snapshotData['Hosp_image_2'] as String?;
    _hospAddress = snapshotData['Hosp_address'] as String?;
    _hospAddress2 = snapshotData['Hosp_address_2'] as LatLng?;
    _hospCnfId = getDataList(snapshotData['Hosp_cnf_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hospital');

  static Stream<HospitalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalRecord.fromSnapshot(s));

  static Future<HospitalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalRecord.fromSnapshot(s));

  static HospitalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalRecordData({
  int? hospID,
  String? hospName,
  String? hospDescription,
  String? hospImage1,
  String? hospImage2,
  String? hospAddress,
  LatLng? hospAddress2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hosp_ID': hospID,
      'Hosp_name': hospName,
      'Hosp_description': hospDescription,
      'Hosp_image_1': hospImage1,
      'Hosp_image_2': hospImage2,
      'Hosp_address': hospAddress,
      'Hosp_address_2': hospAddress2,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalRecordDocumentEquality implements Equality<HospitalRecord> {
  const HospitalRecordDocumentEquality();

  @override
  bool equals(HospitalRecord? e1, HospitalRecord? e2) {
    const listEquality = ListEquality();
    return e1?.hospID == e2?.hospID &&
        e1?.hospName == e2?.hospName &&
        e1?.hospDescription == e2?.hospDescription &&
        e1?.hospImage1 == e2?.hospImage1 &&
        e1?.hospImage2 == e2?.hospImage2 &&
        e1?.hospAddress == e2?.hospAddress &&
        e1?.hospAddress2 == e2?.hospAddress2 &&
        listEquality.equals(e1?.hospCnfId, e2?.hospCnfId);
  }

  @override
  int hash(HospitalRecord? e) => const ListEquality().hash([
        e?.hospID,
        e?.hospName,
        e?.hospDescription,
        e?.hospImage1,
        e?.hospImage2,
        e?.hospAddress,
        e?.hospAddress2,
        e?.hospCnfId
      ]);

  @override
  bool isValidKey(Object? o) => o is HospitalRecord;
}
