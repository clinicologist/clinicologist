import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Gcp2024Record extends FirestoreRecord {
  Gcp2024Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NAME" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "EMAILID" field.
  String? _emailid;
  String get emailid => _emailid ?? '';
  bool hasEmailid() => _emailid != null;

  // "MOBILE" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "DESIGNATION" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "MMC" field.
  String? _mmc;
  String get mmc => _mmc ?? '';
  bool hasMmc() => _mmc != null;

  // "HOSPITAL" field.
  String? _hospital;
  String get hospital => _hospital ?? '';
  bool hasHospital() => _hospital != null;

  void _initializeFields() {
    _name = snapshotData['NAME'] as String?;
    _emailid = snapshotData['EMAILID'] as String?;
    _mobile = snapshotData['MOBILE'] as String?;
    _designation = snapshotData['DESIGNATION'] as String?;
    _mmc = snapshotData['MMC'] as String?;
    _hospital = snapshotData['HOSPITAL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GCP2024');

  static Stream<Gcp2024Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Gcp2024Record.fromSnapshot(s));

  static Future<Gcp2024Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Gcp2024Record.fromSnapshot(s));

  static Gcp2024Record fromSnapshot(DocumentSnapshot snapshot) =>
      Gcp2024Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Gcp2024Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Gcp2024Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Gcp2024Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Gcp2024Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGcp2024RecordData({
  String? name,
  String? emailid,
  String? mobile,
  String? designation,
  String? mmc,
  String? hospital,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NAME': name,
      'EMAILID': emailid,
      'MOBILE': mobile,
      'DESIGNATION': designation,
      'MMC': mmc,
      'HOSPITAL': hospital,
    }.withoutNulls,
  );

  return firestoreData;
}

class Gcp2024RecordDocumentEquality implements Equality<Gcp2024Record> {
  const Gcp2024RecordDocumentEquality();

  @override
  bool equals(Gcp2024Record? e1, Gcp2024Record? e2) {
    return e1?.name == e2?.name &&
        e1?.emailid == e2?.emailid &&
        e1?.mobile == e2?.mobile &&
        e1?.designation == e2?.designation &&
        e1?.mmc == e2?.mmc &&
        e1?.hospital == e2?.hospital;
  }

  @override
  int hash(Gcp2024Record? e) => const ListEquality().hash(
      [e?.name, e?.emailid, e?.mobile, e?.designation, e?.mmc, e?.hospital]);

  @override
  bool isValidKey(Object? o) => o is Gcp2024Record;
}
