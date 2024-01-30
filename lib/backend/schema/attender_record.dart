import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttenderRecord extends FirestoreRecord {
  AttenderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Attender_name" field.
  String? _attenderName;
  String get attenderName => _attenderName ?? '';
  bool hasAttenderName() => _attenderName != null;

  // "Attender_Email_id" field.
  String? _attenderEmailId;
  String get attenderEmailId => _attenderEmailId ?? '';
  bool hasAttenderEmailId() => _attenderEmailId != null;

  // "Attender_Mobile_no" field.
  String? _attenderMobileNo;
  String get attenderMobileNo => _attenderMobileNo ?? '';
  bool hasAttenderMobileNo() => _attenderMobileNo != null;

  // "Attender_Registration_no" field.
  String? _attenderRegistrationNo;
  String get attenderRegistrationNo => _attenderRegistrationNo ?? '';
  bool hasAttenderRegistrationNo() => _attenderRegistrationNo != null;

  // "Attender_hospital" field.
  String? _attenderHospital;
  String get attenderHospital => _attenderHospital ?? '';
  bool hasAttenderHospital() => _attenderHospital != null;

  // "Attender_food" field.
  String? _attenderFood;
  String get attenderFood => _attenderFood ?? '';
  bool hasAttenderFood() => _attenderFood != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _attenderName = snapshotData['Attender_name'] as String?;
    _attenderEmailId = snapshotData['Attender_Email_id'] as String?;
    _attenderMobileNo = snapshotData['Attender_Mobile_no'] as String?;
    _attenderRegistrationNo =
        snapshotData['Attender_Registration_no'] as String?;
    _attenderHospital = snapshotData['Attender_hospital'] as String?;
    _attenderFood = snapshotData['Attender_food'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Attender')
          : FirebaseFirestore.instance.collectionGroup('Attender');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Attender').doc(id);

  static Stream<AttenderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttenderRecord.fromSnapshot(s));

  static Future<AttenderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttenderRecord.fromSnapshot(s));

  static AttenderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttenderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttenderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttenderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttenderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttenderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttenderRecordData({
  String? attenderName,
  String? attenderEmailId,
  String? attenderMobileNo,
  String? attenderRegistrationNo,
  String? attenderHospital,
  String? attenderFood,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Attender_name': attenderName,
      'Attender_Email_id': attenderEmailId,
      'Attender_Mobile_no': attenderMobileNo,
      'Attender_Registration_no': attenderRegistrationNo,
      'Attender_hospital': attenderHospital,
      'Attender_food': attenderFood,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttenderRecordDocumentEquality implements Equality<AttenderRecord> {
  const AttenderRecordDocumentEquality();

  @override
  bool equals(AttenderRecord? e1, AttenderRecord? e2) {
    return e1?.attenderName == e2?.attenderName &&
        e1?.attenderEmailId == e2?.attenderEmailId &&
        e1?.attenderMobileNo == e2?.attenderMobileNo &&
        e1?.attenderRegistrationNo == e2?.attenderRegistrationNo &&
        e1?.attenderHospital == e2?.attenderHospital &&
        e1?.attenderFood == e2?.attenderFood;
  }

  @override
  int hash(AttenderRecord? e) => const ListEquality().hash([
        e?.attenderName,
        e?.attenderEmailId,
        e?.attenderMobileNo,
        e?.attenderRegistrationNo,
        e?.attenderHospital,
        e?.attenderFood
      ]);

  @override
  bool isValidKey(Object? o) => o is AttenderRecord;
}
