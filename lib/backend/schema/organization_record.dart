import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationRecord extends FirestoreRecord {
  OrganizationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Organization_ID" field.
  int? _organizationID;
  int get organizationID => _organizationID ?? 0;
  bool hasOrganizationID() => _organizationID != null;

  // "Organization_name" field.
  String? _organizationName;
  String get organizationName => _organizationName ?? '';
  bool hasOrganizationName() => _organizationName != null;

  // "Organization_description" field.
  String? _organizationDescription;
  String get organizationDescription => _organizationDescription ?? '';
  bool hasOrganizationDescription() => _organizationDescription != null;

  // "Organization_image_1" field.
  String? _organizationImage1;
  String get organizationImage1 => _organizationImage1 ?? '';
  bool hasOrganizationImage1() => _organizationImage1 != null;

  // "Organization_image_2" field.
  String? _organizationImage2;
  String get organizationImage2 => _organizationImage2 ?? '';
  bool hasOrganizationImage2() => _organizationImage2 != null;

  // "Organization_url" field.
  String? _organizationUrl;
  String get organizationUrl => _organizationUrl ?? '';
  bool hasOrganizationUrl() => _organizationUrl != null;

  // "Organization_cnf_id" field.
  List<int>? _organizationCnfId;
  List<int> get organizationCnfId => _organizationCnfId ?? const [];
  bool hasOrganizationCnfId() => _organizationCnfId != null;

  void _initializeFields() {
    _organizationID = castToType<int>(snapshotData['Organization_ID']);
    _organizationName = snapshotData['Organization_name'] as String?;
    _organizationDescription =
        snapshotData['Organization_description'] as String?;
    _organizationImage1 = snapshotData['Organization_image_1'] as String?;
    _organizationImage2 = snapshotData['Organization_image_2'] as String?;
    _organizationUrl = snapshotData['Organization_url'] as String?;
    _organizationCnfId = getDataList(snapshotData['Organization_cnf_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organization');

  static Stream<OrganizationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizationRecord.fromSnapshot(s));

  static Future<OrganizationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizationRecord.fromSnapshot(s));

  static OrganizationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizationRecordData({
  int? organizationID,
  String? organizationName,
  String? organizationDescription,
  String? organizationImage1,
  String? organizationImage2,
  String? organizationUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Organization_ID': organizationID,
      'Organization_name': organizationName,
      'Organization_description': organizationDescription,
      'Organization_image_1': organizationImage1,
      'Organization_image_2': organizationImage2,
      'Organization_url': organizationUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizationRecordDocumentEquality
    implements Equality<OrganizationRecord> {
  const OrganizationRecordDocumentEquality();

  @override
  bool equals(OrganizationRecord? e1, OrganizationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.organizationID == e2?.organizationID &&
        e1?.organizationName == e2?.organizationName &&
        e1?.organizationDescription == e2?.organizationDescription &&
        e1?.organizationImage1 == e2?.organizationImage1 &&
        e1?.organizationImage2 == e2?.organizationImage2 &&
        e1?.organizationUrl == e2?.organizationUrl &&
        listEquality.equals(e1?.organizationCnfId, e2?.organizationCnfId);
  }

  @override
  int hash(OrganizationRecord? e) => const ListEquality().hash([
        e?.organizationID,
        e?.organizationName,
        e?.organizationDescription,
        e?.organizationImage1,
        e?.organizationImage2,
        e?.organizationUrl,
        e?.organizationCnfId
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizationRecord;
}
