import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CnfRecord extends FirestoreRecord {
  CnfRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "C_id" field.
  int? _cId;
  int get cId => _cId ?? 0;
  bool hasCId() => _cId != null;

  // "C_status" field.
  bool? _cStatus;
  bool get cStatus => _cStatus ?? false;
  bool hasCStatus() => _cStatus != null;

  // "C_Title" field.
  String? _cTitle;
  String get cTitle => _cTitle ?? '';
  bool hasCTitle() => _cTitle != null;

  // "C_Date" field.
  DateTime? _cDate;
  DateTime? get cDate => _cDate;
  bool hasCDate() => _cDate != null;

  // "C_End_date" field.
  DateTime? _cEndDate;
  DateTime? get cEndDate => _cEndDate;
  bool hasCEndDate() => _cEndDate != null;

  // "C_time" field.
  DateTime? _cTime;
  DateTime? get cTime => _cTime;
  bool hasCTime() => _cTime != null;

  // "C_End_time" field.
  DateTime? _cEndTime;
  DateTime? get cEndTime => _cEndTime;
  bool hasCEndTime() => _cEndTime != null;

  // "C_Home_address" field.
  String? _cHomeAddress;
  String get cHomeAddress => _cHomeAddress ?? '';
  bool hasCHomeAddress() => _cHomeAddress != null;

  // "C_fees" field.
  int? _cFees;
  int get cFees => _cFees ?? 0;
  bool hasCFees() => _cFees != null;

  // "C_Home_Image" field.
  String? _cHomeImage;
  String get cHomeImage => _cHomeImage ?? '';
  bool hasCHomeImage() => _cHomeImage != null;

  // "C_Department" field.
  String? _cDepartment;
  String get cDepartment => _cDepartment ?? '';
  bool hasCDepartment() => _cDepartment != null;

  // "C_Department_iD" field.
  int? _cDepartmentID;
  int get cDepartmentID => _cDepartmentID ?? 0;
  bool hasCDepartmentID() => _cDepartmentID != null;

  // "C_Description" field.
  String? _cDescription;
  String get cDescription => _cDescription ?? '';
  bool hasCDescription() => _cDescription != null;

  // "C_address_line_1" field.
  String? _cAddressLine1;
  String get cAddressLine1 => _cAddressLine1 ?? '';
  bool hasCAddressLine1() => _cAddressLine1 != null;

  // "C_address_line_2" field.
  String? _cAddressLine2;
  String get cAddressLine2 => _cAddressLine2 ?? '';
  bool hasCAddressLine2() => _cAddressLine2 != null;

  // "C_Image_2" field.
  String? _cImage2;
  String get cImage2 => _cImage2 ?? '';
  bool hasCImage2() => _cImage2 != null;

  // "C_credit_point_line" field.
  String? _cCreditPointLine;
  String get cCreditPointLine => _cCreditPointLine ?? '';
  bool hasCCreditPointLine() => _cCreditPointLine != null;

  // "C_field" field.
  DocumentReference? _cField;
  DocumentReference? get cField => _cField;
  bool hasCField() => _cField != null;

  // "C_platform_fee" field.
  int? _cPlatformFee;
  int get cPlatformFee => _cPlatformFee ?? 0;
  bool hasCPlatformFee() => _cPlatformFee != null;

  // "C_discount" field.
  int? _cDiscount;
  int get cDiscount => _cDiscount ?? 0;
  bool hasCDiscount() => _cDiscount != null;

  // "C_total_fee" field.
  int? _cTotalFee;
  int get cTotalFee => _cTotalFee ?? 0;
  bool hasCTotalFee() => _cTotalFee != null;

  void _initializeFields() {
    _cId = castToType<int>(snapshotData['C_id']);
    _cStatus = snapshotData['C_status'] as bool?;
    _cTitle = snapshotData['C_Title'] as String?;
    _cDate = snapshotData['C_Date'] as DateTime?;
    _cEndDate = snapshotData['C_End_date'] as DateTime?;
    _cTime = snapshotData['C_time'] as DateTime?;
    _cEndTime = snapshotData['C_End_time'] as DateTime?;
    _cHomeAddress = snapshotData['C_Home_address'] as String?;
    _cFees = castToType<int>(snapshotData['C_fees']);
    _cHomeImage = snapshotData['C_Home_Image'] as String?;
    _cDepartment = snapshotData['C_Department'] as String?;
    _cDepartmentID = castToType<int>(snapshotData['C_Department_iD']);
    _cDescription = snapshotData['C_Description'] as String?;
    _cAddressLine1 = snapshotData['C_address_line_1'] as String?;
    _cAddressLine2 = snapshotData['C_address_line_2'] as String?;
    _cImage2 = snapshotData['C_Image_2'] as String?;
    _cCreditPointLine = snapshotData['C_credit_point_line'] as String?;
    _cField = snapshotData['C_field'] as DocumentReference?;
    _cPlatformFee = castToType<int>(snapshotData['C_platform_fee']);
    _cDiscount = castToType<int>(snapshotData['C_discount']);
    _cTotalFee = castToType<int>(snapshotData['C_total_fee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cnf');

  static Stream<CnfRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CnfRecord.fromSnapshot(s));

  static Future<CnfRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CnfRecord.fromSnapshot(s));

  static CnfRecord fromSnapshot(DocumentSnapshot snapshot) => CnfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CnfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CnfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CnfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CnfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCnfRecordData({
  int? cId,
  bool? cStatus,
  String? cTitle,
  DateTime? cDate,
  DateTime? cEndDate,
  DateTime? cTime,
  DateTime? cEndTime,
  String? cHomeAddress,
  int? cFees,
  String? cHomeImage,
  String? cDepartment,
  int? cDepartmentID,
  String? cDescription,
  String? cAddressLine1,
  String? cAddressLine2,
  String? cImage2,
  String? cCreditPointLine,
  DocumentReference? cField,
  int? cPlatformFee,
  int? cDiscount,
  int? cTotalFee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'C_id': cId,
      'C_status': cStatus,
      'C_Title': cTitle,
      'C_Date': cDate,
      'C_End_date': cEndDate,
      'C_time': cTime,
      'C_End_time': cEndTime,
      'C_Home_address': cHomeAddress,
      'C_fees': cFees,
      'C_Home_Image': cHomeImage,
      'C_Department': cDepartment,
      'C_Department_iD': cDepartmentID,
      'C_Description': cDescription,
      'C_address_line_1': cAddressLine1,
      'C_address_line_2': cAddressLine2,
      'C_Image_2': cImage2,
      'C_credit_point_line': cCreditPointLine,
      'C_field': cField,
      'C_platform_fee': cPlatformFee,
      'C_discount': cDiscount,
      'C_total_fee': cTotalFee,
    }.withoutNulls,
  );

  return firestoreData;
}

class CnfRecordDocumentEquality implements Equality<CnfRecord> {
  const CnfRecordDocumentEquality();

  @override
  bool equals(CnfRecord? e1, CnfRecord? e2) {
    return e1?.cId == e2?.cId &&
        e1?.cStatus == e2?.cStatus &&
        e1?.cTitle == e2?.cTitle &&
        e1?.cDate == e2?.cDate &&
        e1?.cEndDate == e2?.cEndDate &&
        e1?.cTime == e2?.cTime &&
        e1?.cEndTime == e2?.cEndTime &&
        e1?.cHomeAddress == e2?.cHomeAddress &&
        e1?.cFees == e2?.cFees &&
        e1?.cHomeImage == e2?.cHomeImage &&
        e1?.cDepartment == e2?.cDepartment &&
        e1?.cDepartmentID == e2?.cDepartmentID &&
        e1?.cDescription == e2?.cDescription &&
        e1?.cAddressLine1 == e2?.cAddressLine1 &&
        e1?.cAddressLine2 == e2?.cAddressLine2 &&
        e1?.cImage2 == e2?.cImage2 &&
        e1?.cCreditPointLine == e2?.cCreditPointLine &&
        e1?.cField == e2?.cField &&
        e1?.cPlatformFee == e2?.cPlatformFee &&
        e1?.cDiscount == e2?.cDiscount &&
        e1?.cTotalFee == e2?.cTotalFee;
  }

  @override
  int hash(CnfRecord? e) => const ListEquality().hash([
        e?.cId,
        e?.cStatus,
        e?.cTitle,
        e?.cDate,
        e?.cEndDate,
        e?.cTime,
        e?.cEndTime,
        e?.cHomeAddress,
        e?.cFees,
        e?.cHomeImage,
        e?.cDepartment,
        e?.cDepartmentID,
        e?.cDescription,
        e?.cAddressLine1,
        e?.cAddressLine2,
        e?.cImage2,
        e?.cCreditPointLine,
        e?.cField,
        e?.cPlatformFee,
        e?.cDiscount,
        e?.cTotalFee
      ]);

  @override
  bool isValidKey(Object? o) => o is CnfRecord;
}
