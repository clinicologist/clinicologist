import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrationsRecord extends FirestoreRecord {
  RegistrationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "student_mobile" field.
  String? _studentMobile;
  String get studentMobile => _studentMobile ?? '';
  bool hasStudentMobile() => _studentMobile != null;

  // "student_email" field.
  String? _studentEmail;
  String get studentEmail => _studentEmail ?? '';
  bool hasStudentEmail() => _studentEmail != null;

  // "student_mmc" field.
  String? _studentMmc;
  String get studentMmc => _studentMmc ?? '';
  bool hasStudentMmc() => _studentMmc != null;

  void _initializeFields() {
    _studentName = snapshotData['student_name'] as String?;
    _studentMobile = snapshotData['student_mobile'] as String?;
    _studentEmail = snapshotData['student_email'] as String?;
    _studentMmc = snapshotData['student_mmc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registrations');

  static Stream<RegistrationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegistrationsRecord.fromSnapshot(s));

  static Future<RegistrationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegistrationsRecord.fromSnapshot(s));

  static RegistrationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegistrationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistrationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistrationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistrationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistrationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistrationsRecordData({
  String? studentName,
  String? studentMobile,
  String? studentEmail,
  String? studentMmc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student_name': studentName,
      'student_mobile': studentMobile,
      'student_email': studentEmail,
      'student_mmc': studentMmc,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistrationsRecordDocumentEquality
    implements Equality<RegistrationsRecord> {
  const RegistrationsRecordDocumentEquality();

  @override
  bool equals(RegistrationsRecord? e1, RegistrationsRecord? e2) {
    return e1?.studentName == e2?.studentName &&
        e1?.studentMobile == e2?.studentMobile &&
        e1?.studentEmail == e2?.studentEmail &&
        e1?.studentMmc == e2?.studentMmc;
  }

  @override
  int hash(RegistrationsRecord? e) => const ListEquality()
      .hash([e?.studentName, e?.studentMobile, e?.studentEmail, e?.studentMmc]);

  @override
  bool isValidKey(Object? o) => o is RegistrationsRecord;
}
